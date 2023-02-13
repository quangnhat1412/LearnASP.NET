using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class HoSoDangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ngay, thang, nam;
            for (int i = 1; i <= 31; i++)
            {
                ngay = i.ToString();
                ddlns.Items.Add(ngay);
            }
            for (int j = 1; j <= 12; j++)
            {
                thang = j.ToString();
                ddlTs.Items.Add(thang);
            }
            for (int i = 1900; i <= 2010; i++)
            {
                nam = i.ToString();
                ddlnams.Items.Add(nam);
            }

        }

        protected void btndangki_Click(object sender, EventArgs e)
        {
            string thongtin = "";

            thongtin += "<ul>";
            thongtin += "<li>" + "Họ tên khách hàng: " + txthoten.Text + "</li>";
            thongtin += "<li>" + "Tên đăng nhập: " + txtTk.Text + "</li>";
            thongtin += "<li>" + "Mật khẩu: " + txtmk.Text + "</li>";
            thongtin += "<li>" + "Ngày sinh: " + ddlns.SelectedItem.Text +"/"+ ddlTs.SelectedItem.Text + "/" + ddlnams.SelectedItem.Text + "</li>";
            thongtin += "<li>" + "Giới tính: " + rbtgioitinh.SelectedItem.Text + "</li>";
            thongtin += "<li>" + "Email: " + txtEmail.Text + "</li>";
            thongtin += "<li>" + "Địa chỉ: " + txtdiachi.Text + "</li>";
            thongtin += "<li>" + "Số điện thoại: " + txtsdt.Text + "</li>";

            thongtin += "</ul>";

            lblthongtin.Text = thongtin;

        }

        
    }
}