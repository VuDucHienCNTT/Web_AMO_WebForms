using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using Web_AMO.Bussiness;
using System.Data;
using System.IO;
namespace Web_AMO.Presentation.Admin
{
    public partial class QLTaiLieu : System.Web.UI.Page
    {
        TaiLieu1 et = new TaiLieu1();
        DataAccessHelper dah = new DataAccessHelper();
        TaiLieuBLL bll = new TaiLieuBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnLammoi.Visible = false;
            if (!IsPostBack)
            {
                grdTapTin.DataSource = bll.LoadTaiLieu();
                grdTapTin.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            btnLammoi.Visible = true;
            if (txtTenFile.Text != "")
            {
                if (txtLink.Text != "")
                {
                    et.TenFile = txtTenFile.Text;
                    et.Ngaydang = DateTime.Parse(txtNgaydang.Text);
                    et.Link = txtLink.Text; ;
                    bll.ThemFile(et);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Upload tệp online : " + txtTenFile.Text + " thành công');</script>");
                    txtTenFile.Text = "";
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Chưa chọn tệp cần upload');</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Bạn chưa nhập tên cho tệp');</script>");
            }
        }
        protected void grdTapTin_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                btnLammoi.Visible = true;
                int idfile = int.Parse(e.Values["IDFILE"].ToString());
                string tenfile = e.Values["TENFILE"].ToString();
                bll.XoaFile(idfile);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Xóa thành công: " + tenfile + "');</script>");
                grdTapTin.DataSource = bll.LoadTaiLieu();
                grdTapTin.DataBind();
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Không xóa được do lỗi :" + ex.Message + "');</script>");
            }
        }

        protected void grdTapTin_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdTapTin.PageIndex = e.NewPageIndex;
            grdTapTin.DataSource = bll.LoadTaiLieu();
            grdTapTin.DataBind();

        }

        protected void btnLammoi_Click(object sender, EventArgs e)
        {
            Response.Redirect("QLTaiLieu.aspx");
        }

        protected void grdTapTin_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (grdTapTin.Rows.Count <= 0)
            {
                lblRecordRow.Text = "No records found";
            }
            else
            {
                lblRecordRow.Visible = false;
            }
        }
    }
}