using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTheFrist
{
    public partial class TaoDanhSach : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            // thêm danh sách sinh viên vào listbox khi btnThem dc ckick
            string name = txtThem.Text;
            ListItem newlbl = new ListItem(name);
            if (!lstDS.Items.Contains(newlbl)) //kiểm tra xem tên có trùng với tên đã có trong danh sách chưa
            {
                lstDS.Items.Add(newlbl); // Nếu không trùng thì thêm vào
            } 
        }
    }
}