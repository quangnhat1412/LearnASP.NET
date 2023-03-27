using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Lab06_WebBanHoa
{
    public partial class ThemHoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cldngaycapnhat.SelectedDate = DateTime.Today;
        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            int soluotxem = 0;
            //1. Mở kết nối CSDL
            SqlConnection conn = new
            SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            conn.Open();
            //2.tao truy van
            SqlCommand cmd = new SqlCommand("insert into Hoa (tenhoa, gia, hinh, maloai, ngaydang, soluotxem) values(@tenhoa, @gia, @hinh, @maloai, @ngaydang, @soluotxem)", conn);
            cmd.Parameters.AddWithValue("@tenhoa", txttenhoa.Text);
            cmd.Parameters.AddWithValue("@gia", txtgia.Text);
            cmd.Parameters.AddWithValue("@hinh", fuhinhhoa.FileName.ToString());
            if (fuhinhhoa.HasFile)
            {
                // 1. khai báo đường dẫn để lưu tập tin trên server
                string path = Server.MapPath("~/Uploads/Hinh_San_Pham/") + fuhinhhoa.FileName;
                // Thực hiện Upload
                fuhinhhoa.SaveAs(path);
            }
            else
            {
                lblthongbao.Text = "Hãy chọn file hình hoa";
            }
            cmd.Parameters.AddWithValue("@maloai", ddldanhmuc.SelectedValue.ToString()) ;
            cmd.Parameters.AddWithValue("@ngaydang", cldngaycapnhat.SelectedDate.ToString("yyyy/MM/dd"));
            cmd.Parameters.AddWithValue("@soluotxem", soluotxem);
            //3.thuc thi ket qua;
            cmd.ExecuteNonQuery();
            //4.Xuất thông báo;
            lblthongbao.Text = "Thêm hoa thành công !";
        }
    }
}
