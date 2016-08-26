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
    public partial class QLLichLV : System.Web.UI.Page
    {
        LichLamViecBLL llvbll = new LichLamViecBLL();
        LichLamViec1 llv = new LichLamViec1();
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
            grdviewLichLV.DataSource = llvbll.LoadLichLV();
            grdviewLichLV.DataBind();
            //Ẩn cột chi tiết khi load lên gridview
            grdviewLichLV.Columns[6].Visible = false;

            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/CKFinder";
            _FileBrowser.SetupCKEditor(ckNhacLich);
        }

        protected void btnThemLich_Click(object sender, EventArgs e)
        {
            if (txttieude.Text == "" || txttieude.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Điền tiêu đề lịch làm việc');</script>");
            }
            else if (txtduongdan.Text == "" || txtduongdan.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Điền đường dẫn lịch làm việc');</script>");
            }
            else if (txtNgaydang.Text == "" || txtNgaydang.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Điền ngày đăng lịch làm việc');</script>");
            }
            else
            {
                llv.TieuDe = txttieude.Text;
                llv.LinK = txtduongdan.Text;
                llv.TrangThai = ddlTrangthai.SelectedValue;
                llv.NgayDang = DateTime.Parse(txtNgaydang.Text);
                llv.LuotXem = int.Parse("0");
                llv.NhacLich = ckNhacLich.Text;
                llvbll.ThemLichLV(llv);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Thêm mới thành công:  " + llv.TieuDe + "');</script>");
                LoadGridView();
            }
        }

        protected void btnLammoi_Click(object sender, EventArgs e)
        {
            btnThemmoi.Visible = true;
            txtID.Text = "";
            txtduongdan.Text = "";
            txtNgaydang.Text = "";
            txttieude.Text = "";
            ddlTrangthai.Text = "";
            txtluotxem.Text = "";
            ckNhacLich.Text = "";
            Response.Redirect("QLLichLV.aspx");
            LoadGridView();
        }

        protected void grdviewLichLV_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnSua.Visible = true;
            btnThemmoi.Visible = false;
            btnLammoi.Visible = true;
            btnXoa.Visible = true;
            int dong = grdviewLichLV.SelectedIndex;
            {
                txtID.Text = HttpUtility.HtmlDecode((string)(grdviewLichLV.Rows[dong].Cells[0].Text.ToString()));
                txttieude.Text = HttpUtility.HtmlDecode((string)(grdviewLichLV.Rows[dong].Cells[1].Text.ToString()));
                txtduongdan.Text = HttpUtility.HtmlDecode((string)(grdviewLichLV.Rows[dong].Cells[2].Text.ToString()));
                lblngaydang.Text = HttpUtility.HtmlDecode((string)(grdviewLichLV.Rows[dong].Cells[4].Text.ToString()));
                txtluotxem.Text = HttpUtility.HtmlDecode((string)(grdviewLichLV.Rows[dong].Cells[5].Text.ToString()));
                ckNhacLich.Text = HttpUtility.HtmlDecode((string)(grdviewLichLV.Rows[dong].Cells[6].Text.ToString()));
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            btnLammoi.Visible = true;

            llv.IDLichLV = int.Parse(txtID.Text);
            llv.TieuDe = txttieude.Text;
            llv.LinK = txtduongdan.Text;
            llv.TrangThai = ddlTrangthai.SelectedValue;

            if (txtNgaydang.Text == "" || txtNgaydang.Text == null)
            {
                llv.NgayDang = DateTime.Parse(lblngaydang.Text);
            }
            else
            {
                llv.NgayDang = DateTime.Parse(txtNgaydang.Text);
            }
            llv.LuotXem = int.Parse(txtluotxem.Text);
            llv.NhacLich = ckNhacLich.Text;
            llvbll.SuaLichLV(llv);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Cập nhật thành công: " + llv.TieuDe + "');</script>");

        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            if (txtID.Text != "")
            {
                llvbll.XoaLichLV(int.Parse(txtID.Text));
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Xóa thành công');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Không xóa được');</script>");
            }
        }

        protected void grdviewLichLV_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdviewLichLV.PageIndex = e.NewPageIndex;
            //Hiện cột chi tiết khi chuyển trang để hiện lên textbox
            grdviewLichLV.Columns[6].Visible = true;
            LoadGridView();
        }

        protected void grdviewLichLV_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           if (grdviewLichLV.Rows.Count <= 0)
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