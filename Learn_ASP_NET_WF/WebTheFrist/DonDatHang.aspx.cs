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

        public bool IsNumber(string pValue)
        {
            foreach (Char c in pValue)
            {
                if (!Char.IsDigit(c))
                    return false;
            }
            return true;
        }
        protected void btnThem_Click(object sender, EventArgs e)
        {
            // Thêm thông tin đặt vào đơn đặt hàng
            if(txtSoLuong.Text == ""||!IsNumber(txtSoLuong.Text))
            {
                lblLoi.Text = "Lỗi Nhập Liệu !!!";
                return;
            }
            else
            {
                lblLoi.Text = "";
                for (int i = 0; i <= lstBanh.Items.Count - 1; i++)
                {
                    string chuoibanh = lstBanh.Items[i].ToString(); // bánh mì (200)
                    string[] banhtp1 = chuoibanh.Split(new char[] { '(' }, StringSplitOptions.RemoveEmptyEntries);
                    string[] banhtp2 = banhtp1[1].Split(new char[] { ')' }, StringSplitOptions.RemoveEmptyEntries);
                    
                    if (ddldsBanh.SelectedItem.Text == banhtp1[0])
                    {
                        int soluongmoi = int.Parse(txtSoLuong.Text) + int.Parse(banhtp2[0]);                          
                        lstBanh.Items[i].Text = ddldsBanh.SelectedItem.Text + "(" + soluongmoi.ToString() + ") ";
                        return;
                    }
                }
                lstBanh.Items.Add(ddldsBanh.SelectedItem.Text + "(" + txtSoLuong.Text + ") ");
      
            }

        }

        protected void btnDelete_Click(object sender, ImageClickEventArgs e)
        {
            // Xóa cách bánh dc chọn trong listbox
            for(int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if(lstBanh.Items[i].Selected) // Nếu bánh đó đang dc chọn
                {
                    lstBanh.Items.RemoveAt(i); // Xóa bánh đó
                }    
            }
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string kq = "";
            if(txtHoTen.Text =="" || IsNumber(txtHoTen.Text))
            {
                lblLoiTen.Text= "Họ tên không hợp lệ";
                return;
            }
            if (txtDC.Text == "")
            {
                lblLoiDC.Text = "Địa chỉ không hợp lệ";
                return;
            }
            if (txtMST.Text == "")
            {
                lblLoiMST.Text = "Mã số thuế không hợp lệ";
                return;
            }
            else
            {
                lblLoiDC.Text = "";
                lblLoiTen.Text = "";
                lblLoiMST.Text = "";
                // In thông tin có được 
                kq += "<div style='border: 1px solid red'>";
                kq += "<h2 style='text-align: center; color: red;'>HÓA ĐƠN ĐẶT HÀNG</h2>";
                kq += "<p style='padding-left: 10px'>Họ Tên: " + txtHoTen.Text + "</p>";
                kq += "<p style='padding-left: 10px'>Địa Chỉ: " + txtDC.Text + "</p>";
                kq += "<p style='padding-left: 10px'>Mã Số Thuế: " + txtMST.Text + "</p>";
                kq += "<br/>";
                kq += "<p style='padding-left: 10px'>Đặt các loại bánh sau:" + "</p>";
                // Tạo table chứa các bánh đã đặt trong list
                kq += "<table style='width:98%; border: 2px solid #ccc; margin: 0 auto'>";
                for (int i = 0; i <= lstBanh.Items.Count - 1; i++)
                {
                    string chuoibanh = lstBanh.Items[i].ToString(); // bánh mì (200)
                    string[] banhtp1 = chuoibanh.Split(new char[] { '(' }, StringSplitOptions.RemoveEmptyEntries);
                    string[] banhtp2 = banhtp1[1].Split(new char[] { ')' }, StringSplitOptions.RemoveEmptyEntries);
                    // Tạo các dòng bánh và số lượng
                    kq += "<tr>";
                    kq += "<td style='border: 1px solid #ccc; margin:2px'>" + banhtp1[0] + "</td>";
                    kq += "<td style='border: 1px solid #ccc' margin:2px>" + banhtp2[0] + "</td>";
                    kq += "</tr>";
                }
                kq += "</table>";
                kq += "</div>";

                lblThongTin.Text = kq;
            };
            
        }

    }
}