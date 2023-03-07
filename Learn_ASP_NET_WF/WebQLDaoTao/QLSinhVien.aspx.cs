using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebQLDaoTao.Models;

namespace WebQLDaoTao
{
    public partial class QLSinhVien : System.Web.UI.Page
    {
        KhoaDAO khDao = new KhoaDAO();
        SinhVienDAO svDao = new SinhVienDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //khoi tao du lieu cho ddlKhoa
                ddlMaKhoa.DataSource = khDao.getAll();
                ddlMaKhoa.DataTextField = "TenKH";
                ddlMaKhoa.DataValueField = "Makh";
                ddlMaKhoa.DataBind();
                //lien ket du lieu cho gvSinhVien
                LienKetDuLieuLuoiSinhVien();
            }
        }
        private void LienKetDuLieuLuoiSinhVien()
        {
            gvSinhvien.DataSource = svDao.getAll();
            gvSinhvien.DataBind();
        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            //thu thap thong tin sinh vien
            string masv = txtMaSV.Text;
            string hosv = txtHoSv.Text;
            string tensv = txtTenSV.Text;
            Boolean gioitinh = rdNam.Checked ? true : false;
            DateTime ngaysinh = DateTime.Parse(txtNgaysinh.Text);
            string noisinh = txtNoiSinh.Text;
            string diachi = txtDiaChi.Text;
            string makh = ddlMaKhoa.SelectedValue;

            // Kiểm tra khóa chính của sinh viên
            if (svDao.findById(masv) != null)
            {
                lblthongbao.Text = "Mã sinh viên đã tồn tại. Chọn mã khác nhé";
                return;
            }
            //them sinh vien vao CSDL
            svDao.Insert(masv, hosv, tensv, gioitinh, ngaysinh, noisinh, diachi, makh);
            lblthongbao.Text = "thêm sinh viên thành công !!!";
            //lien ket lai du lieu cho gvSinhVien
            LienKetDuLieuLuoiSinhVien();
            
        }

        protected void gvSinhvien_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if ((e.Row.RowState & DataControlRowState.Edit) > 0)
                {
                    //tim dieu khien DropDownList ddlKhoa tren dòng hiện hành
                    DropDownList ddlKhoa = (DropDownList)e.Row.FindControl("ddlKhoa");
                    //khoi tao du lieu nguon cho ddlKhoa
                    ddlKhoa.DataSource = khDao.getAll();
                    ddlKhoa.DataValueField = "makh";
                    ddlKhoa.DataTextField = "tenkh";
                    ddlKhoa.DataBind();
                    //gan giá trị mặc định được chọn = giá trị mã khoa của sinh viên
                    ddlKhoa.SelectedValue = ((SinhVien)e.Row.DataItem).MaKH;
                }
            }

        }

        protected void gvSinhvien_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //b1. lấy thông tin sinh viên
            string masv = gvSinhvien.DataKeys[e.RowIndex].Value.ToString();
            string hosv = ((TextBox)gvSinhvien.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string tensv = ((TextBox)gvSinhvien.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            Boolean gioitinh;
            DropDownList gt = (DropDownList)gvSinhvien.Rows[e.RowIndex].FindControl("ddlgioitinh");
            gioitinh = bool.Parse(gt.SelectedValue);
            //Boolean gioitinh = ((CheckBox)gvSinhvien.Rows[e.RowIndex].Cells[3].Controls[0]).Checked;
            DateTime ngaysinh = DateTime.Parse(((TextBox)gvSinhvien.Rows[e.RowIndex].Cells[4].Controls[0]).Text);
            string noisinh = ((TextBox)gvSinhvien.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string diachi = ((TextBox)gvSinhvien.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string makh = ((DropDownList)gvSinhvien.Rows[e.RowIndex].FindControl("ddlKhoa")).SelectedValue;
            //b2. cap nhat vao CSDL
            svDao.Update(masv, hosv, tensv, gioitinh, ngaysinh, noisinh, diachi, makh);
            //b3. chuyen doi trang thai cua dong hien hanh : từ chế độ sửa(edit) sang chế độ xem
            gvSinhvien.EditIndex = -1;
            //b4. lien ket lai du lieu cho gvMonHoc
            LienKetDuLieuLuoiSinhVien();
        }

        protected void gvSinhvien_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Chuyển đổi chế độ của dòng hiện hành từ chứ độ Sửa(Edit) sang chế độ xem
            gvSinhvien.EditIndex = -1;
            // Liên kết lại dữ liệu cho gvSinhVien
            gvSinhvien.DataSource = svDao.getAll();
            gvSinhvien.DataBind();

        }

        protected void gvSinhvien_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                //b1. lấy thông tin mã môn học hiện hành
                string masv = gvSinhvien.DataKeys[e.RowIndex].Value.ToString();
                //b2. goi phương thức xóa Sinh Viên khỏi CSDL của lớp SinhVienDAO
                svDao.Delete(masv);
                //b4. lien ket lai du lieu cho gvSinhVien
                gvSinhvien.DataSource = svDao.getAll();
                gvSinhvien.DataBind();
            }
            catch (Exception)
            {
                Response.Write("<script> alert('Không Thể Xóa Sinh Viên Này')</script>");
            }
        }

        protected void gvSinhvien_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Chuyển đổi trạng thái của dòng hiện hành từ chế độ xem sang chế độ sửa
            gvSinhvien.EditIndex = e.NewEditIndex;
            // Liên kết lại dữ liệu cho gvMonhoc
            gvSinhvien.DataSource = svDao.getAll();
            gvSinhvien.DataBind();
        }

        protected void gvSinhvien_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            // gán trang hiện hành là e
            gvSinhvien.PageIndex = e.NewPageIndex;
            // Liên kết lại dữ liệu
            gvSinhvien.DataSource = svDao.getAll();
            gvSinhvien.DataBind();
        }
    }
}