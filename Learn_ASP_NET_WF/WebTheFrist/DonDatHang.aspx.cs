using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            // Thêm thông tin đặt vào đơn đặt hàng
            if(txtSoLuong.Text == "")
            {
                lblLoi.Text = "Lỗi Nhập Liệu !!!";
                return;
            }
            else
            {
                lstBanh.Items.Add(ddldsBanh.SelectedItem.Text + "(" + txtSoLuong.Text + ")");
                lblLoi.Text = "";
            }
        }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {
            // Xóa cách bánh dc chọn trong listbox
            for(int i = lstBanh.Items.Count -1; i >= 0; i--)
            {
                if(lstBanh.Items[i].Selected) // Nếu bánh đó đang dc chọn
                {
                    lstBanh.Items.RemoveAt(i); // Xóa bánh đó
                }    
            }
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string tieude = "HÓA ĐƠN ĐẶT HÀNG";
            string kq = "";
            // Lấy thông tin từ client

            // In thông tin có được 
            kq += "<div style='border: 1px solid red'>";
            kq += "<p>Họ Tên: " + txtHoTen.Text + "</p>";

            kq += "</div>";

            lblThongTin.Text = kq;
            
        }

    }
}