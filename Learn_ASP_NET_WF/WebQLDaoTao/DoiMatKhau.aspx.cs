using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using WebQLDaoTao.Models;


namespace WebQLDaoTao
{
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        TaiKhoanDAO tkDAO = new TaiKhoanDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USER"] == null)
            {
                Response.Redirect("DangNhap.aspx");
            }
            else
            {           
            TaiKhoan tk = (TaiKhoan)Session["USER"];
            lbltendangnhap.Text = tk.TenDangNhap.ToString();
            }
        }
        protected void btndoimatkhau_Click(object sender, EventArgs e)
        {

            // lấy ra thông tin tài khoản
            string user = lbltendangnhap.Text;
            string pass = txtMatKhau.Text;

            TaiKhoan tk = tkDAO.checkLogin(user, pass);
            if (tk == null)
            {
                lbThongBao.Text = "Mật khẩu cũ sai, hãy nhập lại !!!";
            }
            else
            {
                // Mở kết nối
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
                conn.Open();
                // Lấy thông tin của người dùng từ cơ sở dữ liệu
                SqlCommand cmd = new SqlCommand("select * from taikhoan where tendangnhap=@u and matkhau=@p", conn);
                cmd.Parameters.AddWithValue("@u", user);
                cmd.Parameters.AddWithValue("@p", pass);
                // So sánh với mật khẩu cũ 

                // thưc thi kết quả 
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    dr.Close();
                    // Cập nhật tài khoản lại cho người dùng
                    string update = "UPDATE taikhoan SET matkhau = @p WHERE tendangnhap = @u; ";
                    SqlCommand updateCommand = new SqlCommand(update, conn);
                    updateCommand.Parameters.AddWithValue("@u", lbltendangnhap.Text);
                    updateCommand.Parameters.AddWithValue("@p", txtmatkhaumoi.Text);
                    updateCommand.ExecuteNonQuery();

                    // Hiện ra ô thông báo
                    string message = "Đổi mật khẩu thành công! Bạn có muốn chuyển đến trang đăng nhập ?";
                    string script = "if (confirm('" + message + "')) { " +
                    "  window.location.href = 'DangNhap.aspx';" +
                    "} else { " +
                    "  window.location.href = 'DoiMatKhau.aspx';" +
                    "}";
                    ScriptManager.RegisterStartupScript(this, GetType(), "confirm", script, true);

                }
                else
                {
                    lbThongBao.Text = "Tài khoản không tồn tại hoặc tài khoản, mật khẩu cũ sai";
                }
            }
            
            // Đổi mật khẩu tài khoản 
            // 1. lấy ra User cần đổi mk  
            // 2. Kiểm tra xem mật khẩu cũ có trùng với CSDL không nếu trùng tiếp tục thực hiện, nếu không thì báo lỗi 
            // 3. Cập nhật lại dữ liệu cho CSDL
        }
    }
}