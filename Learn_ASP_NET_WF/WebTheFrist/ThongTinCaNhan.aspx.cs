using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class ThongTinCaNhan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnDangKi_Click(object sender, EventArgs e)
        {
            string kq = "";
            kq += "<h3>Thông Tin Về Bạn:</h3>";
            kq += "<ul>";
            // Lấy thông tin từ client
            // Lấy họ tên
            if(txtHoten.Text=="")
            {
                Response.Write("<script>alert('Họ tên không được để trống và có ký tự đặc biệt !!!')</script>");
                lblThongTin.Text = "";
                return;
            }
            else
            {
                kq += "<li>Họ Tên: " + txtHoten.Text + "</li>";
            }
            // Lấy giới tính
            if (rbtNam.Checked)
            {
                kq += "<li>Giới Tính: " + rbtNam.Text + "</li>";
            }
            else if (rbtNu.Checked)
            {
                kq += "<li>Giới Tính: " + rbtNu.Text + "</li>";
            }
            else
            {
                Response.Write("<script>alert('Hãy Chọn Giới Tính !!!')</script>");
                lblThongTin.Text = "";
                return;
            }    
            // Lấy Ngoại ngữ 
            if (chkAV.Checked && !chkPV.Checked)
            {
                kq += "<li>Ngoại Ngữ: " + chkAV.Text + "</li>";

            }
            else if (chkPV.Checked && !chkAV.Checked)
            {
                kq += "<li>Ngoại Ngữ: " + chkPV.Text + "</li>";

            }
            else if (chkAV.Checked && chkPV.Checked)
            {
                kq += "<li>Ngoại Ngữ: " + chkAV.Text + " & " + chkPV.Text + "</li>";
        
            }
            else if(!chkAV.Checked && !chkPV.Checked)
            {
                Response.Write("<script>alert('Hãy Chọn Ngoại Ngữ !!!')</script>");
                lblThongTin.Text = "";
                return;
            }
            //Lấy thu nhập
            if (rbtlistTN.SelectedIndex == -1)
            {
                Response.Write("<script>alert('Hãy Chọn Thu Nhập !!!')</script>");
                lblThongTin.Text = "";
                return;
            }
            else
            {
                kq += "<li>Thu Nhập: " + rbtlistTN.SelectedItem.Text + "</li>";

            }
            // Lấy trình độ
            if (rbtlistTD.SelectedIndex == -1)
            {
                Response.Write("<script>alert('Hãy Chọn Trình Độ !!!')</script>");
                lblThongTin.Text = "";
                return;
            }
            else
            {
                kq += "<li>Trình độ: " + rbtlistTD.SelectedItem.Text + "</li>";
            }


            kq += "</ul>";

            // Gửi thông tin kết quả về client
            lblThongTin.Text = kq;
        }

        protected void rbtNam_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}