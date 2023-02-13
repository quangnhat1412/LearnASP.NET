using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class Calc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Lấy số 1 và 2 từ client
            //// Bổ sung code kiểm tra hợp lệ 
            //string loi = "";
            //if(txt1.Text=="")
            //{
            //    loi += "Chưa nhập số thứ nhất";
            //}    
            //if(txt2.Text == "")
            //{
            //    loi += "<br/> Chưa nhập số thứ 2";
            //}

            //if(loi.Length > 0)
            //{
            //    lblloi.Text = loi;
            //    return;
            //}

            
            double x = double.Parse(txt1.Text);
            double y = double.Parse(txt2.Text);
            // tính kết quả 
            txtKQ.Text = (x + y).ToString();
            // gửi kết quả về client

        }
    }
}