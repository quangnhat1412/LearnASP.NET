using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO; //Khai báo thư viện để đọc đường dẫn


namespace WebTheFrist
{
    public partial class ViewUpLoad : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnUpload_Click(object sender, EventArgs e)
        {
            mtvUpXem.ActiveViewIndex = 0;
        }

        protected void lbtnXemUp_Click(object sender, EventArgs e)
        {
            mtvUpXem.ActiveViewIndex = 1;
            // 2. Xuất tất cả các tập tin đã Upload ra lstDS trong view2
            // Tạo đối tượng thư mục với đường dẫn chỉ định
            DirectoryInfo dir = new DirectoryInfo(Server.MapPath("~/Upload"));
            // Lấy danh sách các tệp tin trong thư mục Upload
            FileInfo[] fis = dir.GetFiles();
            // Xóa tất cả các mục trong lstDSF
            lstDSF.Items.Clear();
            // duyệt ra các tập tin thêm vào lstDSF
            foreach (FileInfo f in fis)
            {
                lstDSF.Items.Add(f.Name);
            }
        }

        protected void btnUP_Click(object sender, EventArgs e)
        {
            // Xử lý Upload tập tin vào thư mục Upload trên server
            if (FileUP.HasFile)
            {
                // 1. khai báo đường dẫn để lưu tập tin trên server
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