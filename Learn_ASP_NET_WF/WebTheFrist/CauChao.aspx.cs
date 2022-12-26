using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class CauChao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            string msg = "chào bạn <b>" + txtHoten.Text + "<b>";
            msg += " <br> chúc mừng bạn đến với môn học ASP.NET";
            lblCauChao.Text = msg;
            
        }
    }
}