using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class Uploadfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            // Xử lý Upload
            if (FileUP.HasFile)
            {
                // khai báo đường dẫn để lưu tập tin trên server
                string path = Server.MapPath("~/Upload/") + FileUP.FileName;
                // Thực hiện Upload
                FileUP.SaveAs(path);
                lblthongbao.Text = "Đã Upload thành công";
            }
            else
            {
                lblthongbao.Text = "Bạn chưa chọn tệp tin";
            }
        }
    }
}