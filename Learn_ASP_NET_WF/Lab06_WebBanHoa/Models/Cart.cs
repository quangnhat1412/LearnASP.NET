using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace Lab06_WebBanHoa.Models
{
    public class Cart
    {
        // Khai báo danh sách để lưu trữ dữ liệu giỏ hành
        private List<CartItem> _Items;

        // Phương thức khởi tạo giỏ hàng
        public Cart()
        {
            _Items = new List<CartItem>();
        }

        // trả về các danh sách trong giỏ
        public List<CartItem> items { get { return _Items; } }

        // Phương thức thêm sản phẩm vào giỏ 
        public void Add(int masp)
        {
            // Truy vấn CSDL để lấy thông tin sản phẩm cần thêm vào giỏ hàng 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("select * from Hoa Where mahoa = @mahoa",conn);
            cmd.Parameters.AddWithValue("@mahoa", masp);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                // Tạo đối tượng CartItem
                CartItem sp = new CartItem
                {
                    masp = masp,
                    tensp = dr["TenHoa"].ToString(),
                    hinh = dr["hinh"].ToString(),
                    dongia = int.Parse(dr["Gia"].ToString()),
                    soluong = 1

                };

                // Thêm vào giỏ ( lập trình thêm trong trường hợp sản phẩm đã có trong giỏ)
                for (int i = 0; i < _Items.Count; i++)
                {
                    if (_Items[i].masp == masp)
                    {
                        _Items[i].soluong++;
                        break;
                    } 
                }
                _Items.Add(sp);
            }

        }
        // Xóa sản phẩm trong giỏ
        public void Delete (int masp)
        {
            // Duyệt qua danh sách sảm phảm trong giỏ 
            for (int i = 0; i < _Items.Count; i++)
            {
                if(_Items[i].masp == masp)
                {
                    _Items.RemoveAt(i);
                    break;
                }
            }
        }
        // Phương thức cập nhật số lượng 
        public void Update(int masp, int soluong)
        {
            // Duyệt qua danh sách sảm phảm trong giỏ 
            for (int i = 0; i < _Items.Count; i++)
            {
                if (_Items[i].masp == masp)
                {
                    if (soluong > 0)
                    {
                        _Items[i].soluong = soluong;
                        break;
                    }
                    else
                    {
                        _Items.RemoveAt(i);
                        break;
                    }
                }
            }
        }
        // Tính tổng thành tiền
        public int Total
        {
            get
            {
                int tong = 0;
                foreach(CartItem item in _Items)
                {
                    tong += item.thanhtien;
                }
                return tong;
            }
        }
    }
}