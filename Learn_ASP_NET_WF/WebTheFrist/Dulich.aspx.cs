using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class Dulich : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lstDiadanh.Items.Add("Vịnh Hạ Long");
                lstDiadanh.Items.Add("Vũng Tàu");
                lstDiadanh.Items.Add("Nha Trang");
                lstDiadanh.Items.Add("Phú Quốc");
                lstDiadanh.Items.Add("Phan Thiết");
                lstDiadanh.Items.Add("Phong Nha-Kẻ Bàng");

                lblSumdd.Text = lstDiadanh.Items.Count.ToString();

            }

        }

        protected void lstDiadanh_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnChon_Click(object sender, EventArgs e)
        {
            string kq = "Các điểm du lịch bạn chọn: <ul>";
            // Lấy các đại danh mà người đã chọn 
            foreach (ListItem x in lstDiadanh.Items)
            {
                if (x.Selected)
                {
                    kq += "<li>" + x.Text + "</li>";
                }
            }
            kq += "</ul>";
            //
            lblDSDD.Text = kq;
        }
    }
}