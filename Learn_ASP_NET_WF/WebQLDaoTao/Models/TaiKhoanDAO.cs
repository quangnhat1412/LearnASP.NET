using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace WebQLDaoTao.Models
{
    public class TaiKhoanDAO
    {
        public TaiKhoan checkLogin(string username, string password)
        {
            TaiKhoan tk = null;
            //1.Mo ket noi CSDL
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
            conn.Open();
            //2.tao truy van 
            SqlCommand cmd = new SqlCommand("select * from taikhoan where tendangnhap=@u and matkhau=@p", conn);
            cmd.Parameters.AddWithValue("@u", username);
            cmd.Parameters.AddWithValue("@p", password);
            //3.thuc thi ket qua;
            SqlDataReader dr = cmd.ExecuteReader();
            //4.xu ly ket qua tra ve 
            if (dr.Read())
            {
                //tao doi tuong tai khoan
                tk = new TaiKhoan
                {
                    TenDangNhap = dr["tendangnhap"].ToString(),
                    MatKhau = dr["matkhau"].ToString(),
                    VaiTro = dr["vaitro"].ToString()
                };
            }
            return tk;

        }

        // Tạo phương thức cập nhật tài khoản đăng nhập sau khi đổi mật khẩu
        //public int Update(string mk)
        //{
        //    //1.Mo ket noi CSDL
        //    SqlConnection conn = new
        //    SqlConnection(ConfigurationManager.ConnectionStrings["WebQLDaoTao_ConStr"].ConnectionString);
        //    conn.Open();
        //    //2.tao truy van
        //    SqlCommand cmd = new SqlCommand("update monhoc set matkhau=@matkhau where taikhoan = @taikhoan", conn);

        //    //cmd.Parameters.AddWithValue("@taikhoan", taikhoan);
        //    cmd.Parameters.AddWithValue("@matkhau", mk);
        //    //3.thuc thi ket qua;
        //    return cmd.ExecuteNonQuery();
        //}
    }
}