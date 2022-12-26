using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = "Hôm nay ngày: " + DateTime.Today.ToString("dd/MM/yyyy");
            // gửi về client
            lbthongbao.Text = str;
        }
    }
}