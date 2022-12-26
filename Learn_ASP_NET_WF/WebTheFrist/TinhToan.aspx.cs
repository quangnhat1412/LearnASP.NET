using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCong_Click(object sender, EventArgs e)
        {
            double x = double.Parse(txts1.Text);
            double y = double.Parse(txts2.Text);

            double kq = x + y;

            txtKQ.Text = kq.ToString();
        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            double x = double.Parse(txts1.Text);
            double y = double.Parse(txts2.Text);

            double kq = x - y;

            txtKQ.Text = kq.ToString();
        }

        protected void btnNhan_Click(object sender, EventArgs e)
        {
            double x = double.Parse(txts1.Text);
            double y = double.Parse(txts2.Text);

            double kq = x * y;

            txtKQ.Text = kq.ToString();

        }

        protected void btnChia_Click(object sender, EventArgs e)
        {
            double x = double.Parse(txts1.Text);
            double y = double.Parse(txts2.Text);

            double kq = x / y;

            txtKQ.Text = kq.ToString();
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txts1.Text = "";
            txts2.Text = "";
            txtKQ.Text = "";
        }
    }
}