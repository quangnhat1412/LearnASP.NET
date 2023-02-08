using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class CheckSN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblToday.Text = "To day: " + DateTime.Today.ToString("dd/MM/yyyy");
            lblThongbao.Text = "";
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string kq;
            // Chọn ngày sinh của bạn 
            //var ngaychon = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            //string sn = "Ngày sinh nhật của bạn là: ";
            //lblThongbao.Text = sn + ngaychon;
            lblNS.Text = "Ngày sinh nhật của bạn là: " + Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            if (Calendar1.SelectedDate.DayOfYear > DateTime.Now.DayOfYear)
            {
                kq = "Còn " + (Calendar1.SelectedDate - DateTime.Now).ToString("dd") + " ngày là đến sinh nhật của bạn";
            }
            else if (Calendar1.SelectedDate.DayOfYear < DateTime.Now.DayOfYear)
            {
                kq = "Sinh nhật của bạn đã qua " + (DateTime.Now - Calendar1.SelectedDate).ToString("dd") + " ngày";
            }
            else
            {
                kq = "Chúc mừng sinh nhật bạn <3";
            }
            lblThongbao.Text = kq; 
        }
    }
}