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
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btndoimatkhau_Click(object sender, EventArgs e)
        {
            // lấy ra thông tin tài khoản
            string user = txtTenDangNhap.Text;
            string pass = txtMatKhau.Text;
            // Mở kết nối
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            // Lấy thông tin của người dùng từ cơ sở dữ liệu
            SqlCommand cmd = new SqlCommand("select * from taikhoan where tendangnhap=@u and matkhau=@p", conn);
            cmd.Parameters.AddWithValue("@u", user);
            cmd.Parameters.AddWithValue("@p", pass);
            // thưc thi kết quả 
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Close();
                // Cập nhật tài khoản lại cho người dùng
                string update = "UPDATE taikhoan SET matkhau = @p WHERE tendangnhap = @u; ";
                SqlCommand updateCommand = new SqlCommand(update, conn);
                updateCommand.Parameters.AddWithValue("@u", txtTenDangNhap.Text);
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
                lbThongBao.Text = "Tài khoản không tồn tại, hoặc mk tk cũ sai";
            }


            // Đổi mật khẩu tài khoản 
            // 1. lấy ra User cần đổi mk  
            // 2. Kiểm tra xem mật khẩu cũ có trùng với CSDL không nếu trùng tiếp tục thực hiện, nếu không thì báo lỗi 
            // 3. Cập nhật lại dữ liệu cho CSDL
        }
    }
}