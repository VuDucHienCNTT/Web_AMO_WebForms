using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Web_AMO.Bussiness;
using Web_AMO.Entities;

namespace Web_AMO.Presentation.Admin
{
    public partial class TrangQuanTri : System.Web.UI.Page
    {
        DangKyBLL bll = new DangKyBLL();
        DangKy1 dk1 = new DangKy1();
        CanBoBLL cbbll = new CanBoBLL();
        public void LoadGridView()
        {
            dgvTaiKhoan.DataSource = bll.LoadDuLieu();
            dgvTaiKhoan.DataBind();

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridView();
            }
            //ddlhotencanbo.DataSource = cbbll.LayIDCB_DangKy();
            //ddlhotencanbo.DataValueField = "IDCB";
            //ddlhotencanbo.DataTextField = "HOTEN";
            //ddlhotencanbo.DataBind();
        }

        protected void dgvTaiKhoan_SelectedIndexChanged(object sender, EventArgs e)
        {
            //int dong = dgvTaiKhoan.SelectedIndex;
            //DataTable dt = new DataTable();
            //dt = bll.LoadDuLieu();
        }

        protected void dgvTaiKhoan_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int idtaikhoan = int.Parse(e.Values["IDTAIKHOAN"].ToString());
                bll.XoaTaiKhoan(idtaikhoan);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Xóa thành công: " + idtaikhoan + "');</script>");
                LoadGridView();

            }
            catch
            {
                int idtaikhoan = int.Parse(e.Values["IDTAIKHOAN"].ToString());
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Không xóa được: " + idtaikhoan + "');</script>");
            }
        }

        protected void dgvTaiKhoan_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dgvTaiKhoan.EditIndex = e.NewEditIndex;
            //lblThongBao.Text = "";
            bll.SuaTaiKhoan(dk1);
            LoadGridView();
        }

        protected void dgvTaiKhoan_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dgvTaiKhoan.EditIndex = -1;
            LoadGridView();
        }

        protected void dgvTaiKhoan_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            dk1.IDTaiKhoan = int.Parse(e.NewValues["IDTAIKHOAN"].ToString());
            dk1.Quyen = e.NewValues["QUYEN"].ToString();
            dk1.TenDN = e.NewValues["TENDANGNHAP"].ToString();
            dk1.Pass = e.NewValues["PASSWORD"].ToString();
            dk1.Repass = e.NewValues["PASSWORD"].ToString();
            dk1.Email = e.NewValues["EMAIL"].ToString();
            dk1.GioiTinh = e.NewValues["GIOITINH"].ToString();
            dk1.NgaySinh = e.NewValues["NGAYSINH"].ToString();
            dk1.DiaChi = e.NewValues["DIACHI"].ToString();
            dk1.SDT = double.Parse(e.NewValues["SODIENTHOAI"].ToString());
            try
            {
                bll.SuaTaiKhoan(dk1);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Cập nhật thành công: " + dk1.TenDN + "');</script>");
                dgvTaiKhoan.EditIndex = -1;
                LoadGridView();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Không sửa được do lỗi: " + ex.Message + "');</script>");
            }
        }
    }
}