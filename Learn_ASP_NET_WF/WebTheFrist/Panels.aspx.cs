using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class Panels : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) // Trang dc load lần đầu 
            {
                for (int i = 1; i <= 50; i++)
                {
                    btnlNgheNghiep.Items.Add("Nghề " + i);
                }
            }
            else // khi trang dc load lại (PostBack)
            {
                // xử lý ẩn/hiện panels sở thich/nghề nghiệp theo trạng thái của chkST/NN
                PanelST.Visible = ChkST.Checked;
                PanelNN.Visible = ChkNN.Checked;
            }
           
        }

        protected void ChkST_CheckedChanged(object sender, EventArgs e)
        {

        }
    }
}