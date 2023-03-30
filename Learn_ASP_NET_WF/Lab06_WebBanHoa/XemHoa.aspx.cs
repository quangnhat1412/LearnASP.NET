using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Lab06_WebBanHoa.Models;

namespace Lab06_WebBanHoa
{
    public partial class XemHoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddtoCart_Click(object sender, EventArgs e)
        {
            // Lấy mã sản phẩm từ người dùng chọn
            int mahoa = int.Parse(((Button)sender).CommandArgument);
            //Response.Write("<script> alert('" + mahoa + "') </script>");

            // Thêm sản phẩm vào giỏ hàng (dùng lớp Cart, CartItem và đối tượng sesion
            Cart cart = (Cart)Session["CART"]; // Vào sesion lấy ra giỏ hàng của người dùng
            if(cart == null) // Người dùng chưa có giỏ hàng
            {
                cart = new Cart(); // Tạo giỏ hàng mới
                Session["CART"] = cart;

            }
            // Thêm sản phẩm vào giỏ 
            cart.Add(mahoa);

            // Thông báo cho người dùng hoặc chuyển hướng đến trang XemGio.aspx
            Response.Write("<script> alert('Đã thêm sản phẩm vào giỏ') </script>");

            // Tăng giá trị của số lượng sản phẩm lên
            //int sp = Convert.ToInt32(Session["SLSP"]);
            //sp++;
            //Session["SLSP"] = sp;

            
        }

        protected void rptHoa_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}