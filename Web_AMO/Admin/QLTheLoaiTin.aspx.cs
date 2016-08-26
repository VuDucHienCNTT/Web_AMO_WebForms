using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.Bussiness;
using System.Data;
namespace Web_AMO.Admin
{
    public partial class QLTheLoaiTin : System.Web.UI.Page
    {
        TheLoai1 tl = new TheLoai1();
        TheLoaiBLL tlbll = new TheLoaiBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridView();
            }
        }
        public void LoadGridView()
        {
            gridviewTheloai.DataSource = tlbll.LoadTheLoai();
            gridviewTheloai.DataBind();
        }
        protected void btnThemmoi_Click(object sender, EventArgs e)
        {
            TextBox txtidtheloai = (TextBox)gridviewTheloai.FooterRow.FindControl("txtIDTheloai");
            TextBox txttentheloai = (TextBox)gridviewTheloai.FooterRow.FindControl("txtTenTheloai");
            if (txtidtheloai.Text == "" || txtidtheloai.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Vui lòng điền ID cho thể loại');</script>");
            }
            else if (txttentheloai.Text == "" || txttentheloai == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Vui lòng điền Tên cho thể loại');</script>");
            }

            else
            {
                tl.IdTheLoaiTin = txtidtheloai.Text;
                tl.TenTheLoaiTin = txttentheloai.Text;
                tlbll.ThemTheLoaiTin(tl);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Thêm mới thành công:  " + tl.TenTheLoaiTin + "');</script>");
                gridviewTheloai.DataSource = tlbll.LoadTheLoai();
                gridviewTheloai.DataBind();
            }
        }
        protected void gridviewTheloai_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string idtheloaitin = e.Values["IDTHELOAITIN"].ToString();
            try
            {
                tlbll.XoaTheLoaiTin(idtheloaitin);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Xóa thành công: " + idtheloaitin + "');</script>");
                LoadGridView();

            }
            catch(Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Không xóa được: " + ex.Message + "');</script>");
            }
        }

        protected void gridviewTheloai_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gridviewTheloai.EditIndex = e.NewEditIndex;
            LoadGridView();
        }

        protected void gridviewTheloai_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gridviewTheloai.EditIndex = -1;
            LoadGridView();
        }

        protected void gridviewTheloai_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            tl.IdTheLoaiTin = e.NewValues["IDTHELOAITIN"].ToString();
            tl.TenTheLoaiTin = e.NewValues["TENTHELOAITIN"].ToString();
            tlbll.SuaTheLoaiTin(tl);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Cập nhật thành công: " + tl.TenTheLoaiTin + "');</script>");
            gridviewTheloai.EditIndex = -1;
            LoadGridView();
        }
    }
}