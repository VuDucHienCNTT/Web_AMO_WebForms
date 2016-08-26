using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Bussiness;
using Web_AMO.Entities;
namespace Web_AMO.Admin
{
    public partial class QLThongBao : System.Web.UI.Page
    {
        ThongBaoBLL tbbll = new ThongBaoBLL();
        ThongBao1 tb = new ThongBao1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridView();
            }
        }
        public void LoadGridView()
        {
            btnSua.Visible = false;
            btnXoa.Visible = false;
            grdviewThongBao.DataSource = tbbll.LoadThongBao();
            grdviewThongBao.DataBind();
            //Ẩn cột chi tiết khi load lên gridview
            grdviewThongBao.Columns[2].Visible = false;

            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/CKFinder";
            _FileBrowser.SetupCKEditor(ckNoiDung);
        }

        protected void btnThemmoi_Click(object sender, EventArgs e)
        {
            if (txttieude.Text == "" || txttieude.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Điền tiêu đề thông báo');</script>");
            }
            else if (ckNoiDung.Text == "" || ckNoiDung.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Điền nội dung thông báo');</script>");
            }
            else if (txtNgaythongbao.Text == "" || txtNgaythongbao.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Điền ngày thông báo');</script>");
            }
            else
            {
                tb.TieuDeTB = txttieude.Text;
                tb.NoiDungTB = ckNoiDung.Text;
                tb.TrangThai = ddlTrangthai.SelectedValue;
                tb.NgayTB = DateTime.Parse(txtNgaythongbao.Text);
                tbbll.ThemTB(tb);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Thêm mới thành công:  " + tb.TieuDeTB + "');</script>");
                LoadGridView();
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            btnLammoi.Visible = true;

            tb.IDTB = int.Parse(txtID.Text);
            tb.TieuDeTB = txttieude.Text;
            tb.NoiDungTB = ckNoiDung.Text;
            tb.TrangThai = ddlTrangthai.SelectedValue;

            if (txtNgaythongbao.Text == "" || txtNgaythongbao.Text == null)
            {
                tb.NgayTB = DateTime.Parse(lblngaytb.Text);
            }
            else
            {
                tb.NgayTB = DateTime.Parse(txtNgaythongbao.Text);
            }
            tbbll.SuaTB(tb);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Cập nhật thành công: " + tb.TieuDeTB + "');</script>");
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (txtID.Text != "")
            {
                tbbll.XoaTB(int.Parse(txtID.Text));
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Xóa thành công');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Không xóa được');</script>");
            }
        }

        protected void btnLammoi_Click(object sender, EventArgs e)
        {
            Response.Redirect("QLThongBao.aspx");
        }

        protected void grdviewThongBao_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnSua.Visible = true;
            btnThemmoi.Visible = false;
            btnLammoi.Visible = true;
            btnXoa.Visible = true;
            int dong = grdviewThongBao.SelectedIndex;
            {
                txtID.Text = HttpUtility.HtmlDecode((string)(grdviewThongBao.Rows[dong].Cells[0].Text.ToString()));
                txttieude.Text = HttpUtility.HtmlDecode((string)(grdviewThongBao.Rows[dong].Cells[1].Text.ToString()));
                ckNoiDung.Text = HttpUtility.HtmlDecode((string)(grdviewThongBao.Rows[dong].Cells[2].Text.ToString()));
                lblngaytb.Text = HttpUtility.HtmlDecode((string)(grdviewThongBao.Rows[dong].Cells[3].Text.ToString()));
                ddlTrangthai.Text = HttpUtility.HtmlDecode((string)(grdviewThongBao.Rows[dong].Cells[4].Text.ToString()));
            }            
        }

        protected void grdviewThongBao_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdviewThongBao.PageIndex = e.NewPageIndex;
            //Hiện cột chi tiết khi chuyển trang để hiện lên textbox
            grdviewThongBao.Columns[2].Visible = true;
            LoadGridView();
        }

        protected void grdviewThongBao_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (grdviewThongBao.Rows.Count <= 0)
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