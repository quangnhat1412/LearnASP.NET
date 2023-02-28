using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebQLDaoTao.Models;

namespace WebQLDaoTao
{
    public partial class QLMonHoc : System.Web.UI.Page
    {
        MonHocDAO mhDAO = new MonHocDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Liên kết dữ liệu cho gvMonhoc
                gvMonhoc.DataSource = mhDAO.getAll();
                gvMonhoc.DataBind();

            }
        }
        protected void gvMonhoc_RowEditing(object sender, GridViewEditEventArgs e)
        {
            // Chuyển đổi trạng thái của dòng hiện hành từ chế độ xem sang chế độ sửa
            gvMonhoc.EditIndex = e.NewEditIndex;
            // Liên kết lại dữ liệu cho gvMonhoc
            gvMonhoc.DataSource = mhDAO.getAll();
            gvMonhoc.DataBind();
        }

        protected void gvMonhoc_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Chuyển đổi chế độ của dòng hiện hành từ chứ độ Sửa(Edit) sang chế độ xem
            gvMonhoc.EditIndex = -1;
            // Liên kết lại dữ liệu cho gvMonhoc
            gvMonhoc.DataSource = mhDAO.getAll();
            gvMonhoc.DataBind();
        }

        protected void gvMonhoc_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //b1. lấy thông tin môn học
            string mamh = gvMonhoc.DataKeys[e.RowIndex].Value.ToString();
            string tenmh = ((TextBox)gvMonhoc.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            int sotiet = int.Parse(((TextBox)gvMonhoc.Rows[e.RowIndex].Cells[2].Controls[0]).Text);
            //b2. cap nhat vao CSDL
            mhDAO.Update(mamh, tenmh, sotiet);
            //b3. chuyen doi trang thai cua dong hien hanh : từ chế độ sửa(edit) sang chế độ xem
            gvMonhoc.EditIndex = -1;
            //b4. lien ket lai du lieu cho gvMonHoc
            gvMonhoc.DataSource = mhDAO.getAll();
            gvMonhoc.DataBind();
        }

        protected void gvMonhoc_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                //b1. lấy thông tin mã môn học hiện hành
                string mamh = gvMonhoc.DataKeys[e.RowIndex].Value.ToString();
                //b2. goi phương thức xóa môn học khỏi CSDL của lớp MonHocDAO
                mhDAO.Delete(mamh);
                //b4. lien ket lai du lieu cho gvMonHoc
                gvMonhoc.DataSource = mhDAO.getAll();
                gvMonhoc.DataBind();
            }
            catch (Exception)
            {
                Response.Write("<script> alert('Không thể xóa môn học này')</script>");
            }

        }

        protected void gvMonhoc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            //gán chỉ số trang hiện hành = chỉ số trang được chọn
            gvMonhoc.PageIndex = e.NewPageIndex;
            //lien ket lai du lieu cho gvMonHoc
            gvMonhoc.DataSource = mhDAO.getAll();
            gvMonhoc.DataBind();
        }

        protected void btThem_Click(object sender, EventArgs e)
        {
            try
            {
                // Lấy thông tin môn học cần thêm
                string mamh = txtMaMH.Text;
                string tenmh = txtTenMH.Text;
                int sotiet = int.Parse(txtSoTiet.Text);
                if (mhDAO.findById(mamh) != null)
                {
                    lbThongBao.Text = "Trùng Mã Môn Học, Hãy Sửa Lại!!!";
                    txtMaMH.Text = "";
                    txtSoTiet.Text = "";
                    txtTenMH.Text = "";
                    txtMaMH.Focus();
                    return;
                }
                // Gọi phương thức thêm môn học trong Class MonHocDAO
                mhDAO.Insert(mamh, tenmh, sotiet); // Lệnh thêm dữ liệu
                lbThongBao.Text = "Thêm Môn Học Thành Công!!!";
                txtMaMH.Text = "";
                txtSoTiet.Text = "";
                txtTenMH.Text = "";
            }
            catch (Exception)
            {
                lbThongBao.Text = "Thao tác thêm môn học không thành công do lỗi dữ liệu!!!";
                txtMaMH.Text = "";
                txtSoTiet.Text = "";
                txtTenMH.Text = "";
            }
            //liên kết dữ liệu cho gvMonHoc
            gvMonhoc.DataSource = mhDAO.getAll();
            gvMonhoc.DataBind();

        }
    }
}