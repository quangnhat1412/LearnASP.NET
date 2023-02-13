using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class dangki : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDK_Click(object sender, EventArgs e)
        {
            string thongtin = "";
            thongtin += "Tên đăng nhập:" + txtTenDN.Text;
            thongtin += "<br/> Mật khẩu: " + txtmk.Text;
            thongtin += "<br/> Tuổi: " + txtage.Text;
            thongtin += "<br/> Email: " + txtEmail.Text;
            lblthongtin.Text = thongtin;
            
        }
    }
}