using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.DataAcessLayer;
using Web_AMO.Entities;
using Web_AMO.Bussiness;
using System.Data;
namespace Web_AMO.Presentation.Admin
{
    public partial class QLTinTuc : System.Web.UI.Page
    {
        DataAccessHelper dah = new DataAccessHelper();
        TinTucBLL ttbll = new TinTucBLL();
        TinTuc1 tt = new TinTuc1();
        TheLoaiBLL tlbll = new TheLoaiBLL();
        public void LoadGridView()
        {
            dgvTinTuc.DataSource = ttbll.LoadTinTuc();
            dgvTinTuc.DataBind();

            // ẩn cột nội dung
            dgvTinTuc.Columns[4].Visible = false;

            //Add ảnh vào ckNoidung
            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/CKFinder";
            _FileBrowser.SetupCKEditor(ckNoidungbaiviet);

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            btnLammoi.Visible = false;
            btnXoabai.Visible = false;
            btnSuabai.Visible = false;

            if (!IsPostBack)
            {
                LoadGridView();
                ddltheloaitin.DataSource = tlbll.LayIDTheLoaiTin();
                ddltheloaitin.DataValueField = "IDTHELOAITIN";
                ddltheloaitin.DataTextField = "TENTHELOAITIN";
                ddltheloaitin.DataBind();
            }

        }

        protected void btnSuabai_Click(object sender, EventArgs e)
        {
            btnLammoi.Visible = true;
            string a = System.IO.Path.GetExtension(UploadAnh.FileName);
            if (UploadAnh.HasFile)
            {
                if (a.ToLower() == ".jpg" || a.ToLower() == ".jpeg" || a.ToLower() == ".png" || a.ToLower() == ".gif")
                {
                    tt.IDTinTuc = int.Parse(txtid.Text);
                    tt.IDTheLoaiTin = ddltheloaitin.SelectedValue;
                    tt.TieuDe = txttieude.Text;
                    tt.TomTat = txttomtat.Text;
                    tt.NoiDung = ckNoidungbaiviet.Text;
                    
                    if (txtngaydang.Text == "" || txtngaydang.Text == null)
                    {
                        tt.NgayDang = DateTime.Parse(lblngaydang.Text);
                    }
                    else
                    {
                        tt.NgayDang = DateTime.Parse(txtngaydang.Text);
                    }
                    tt.TacGia = txttacgia.Text;
                    tt.NguoiDang = txtnguoidang.Text;
                    tt.LuotXem = int.Parse(txtluotxem.Text);
                    string str = UploadAnh.FileName;
                    UploadAnh.PostedFile.SaveAs(Server.MapPath(".") + "/ImageTinTuc/" + str);
                    tt.AnhDaiDien = "ImageTinTuc/" + str.ToString();
                    ttbll.SuaTinTuc(tt);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Sửa bài viết thành công');</script>");
                }
                else
                {
                    btnSuabai.Visible = true;
                    btnXoabai.Visible = true;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Chỉ được upfile ảnh .jpg, .jpeg, .png, .gif');</script>");
                }
            }
            else
            {
                btnSuabai.Visible = true;
                btnXoabai.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Vui lòng chọn ảnh cho bài viết');</script>");
            }
        }

        protected void btnXoabai_Click(object sender, EventArgs e)
        {
            if (txtid.Text != "")
            {
                ttbll.XoaTinTuc(int.Parse(txtid.Text));
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Xóa bài viết thành công');</script>");
                btnLammoi.Visible = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Lỗi không xóa được');</script>");
            }
        }
        protected void btnDangbai_Click(object sender, EventArgs e)
        {
            btnLammoi.Visible = true;
            string a = System.IO.Path.GetExtension(UploadAnh.FileName);
            if (UploadAnh.HasFile)
            {
                if (a.ToLower() == ".jpg" || a.ToLower() == ".jpeg" || a.ToLower() == ".png" || a.ToLower() == ".gif")
                {
                    tt.IDTheLoaiTin = ddltheloaitin.SelectedValue;
                    tt.TieuDe = txttieude.Text;
                    tt.TomTat = txttomtat.Text;
                    tt.NoiDung = ckNoidungbaiviet.Text;
                    tt.NgayDang = DateTime.Parse(txtngaydang.Text);
                    tt.TacGia = txttacgia.Text;
                    tt.NguoiDang = txtnguoidang.Text;
                    tt.LuotXem = int.Parse("0");
                    string str = UploadAnh.FileName;
                    UploadAnh.PostedFile.SaveAs(Server.MapPath(".") + "/ImageTinTuc/" + str);
                    tt.AnhDaiDien = "ImageTinTuc/" + str.ToString();
                    ttbll.ThemTinTuc(tt);
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Đăng bài viết thành công');</script>");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Chỉ được upfile ảnh .jpg, .jpeg, .png, .gif');</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Vui lòng chọn ảnh cho bài viết');</script>");
            }
        }
        protected void dgvTinTuc_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnDangbai.Visible = false;
            btnXoabai.Visible = true;
            btnSuabai.Visible = true;
            btnLammoi.Visible = true;
            int dong = dgvTinTuc.SelectedIndex;
            {
                txtid.Text = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[0].Text.ToString()));
                ddltheloaitin.SelectedValue = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[1].Text.ToString()));
                txttieude.Text = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[2].Text.ToString()));
                txttomtat.Text = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[3].Text.ToString()));
                ckNoidungbaiviet.Text = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[4].Text.ToString()));
                lblngaydang.Text = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[6].Text.ToString()));
                txttacgia.Text = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[7].Text.ToString()));
                txtnguoidang.Text = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[8].Text.ToString()));
                txtluotxem.Text = HttpUtility.HtmlDecode((string)(dgvTinTuc.Rows[dong].Cells[9].Text.ToString()));
            }

        }

        protected void btnLammoi_Click(object sender, EventArgs e)
        {
            LoadGridView();
            btnLammoi.Visible = false;
            btnDangbai.Visible = true;
            Response.Redirect("QLTinTuc.aspx");
        }

        protected void dgvTinTuc_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            dgvTinTuc.PageIndex = e.NewPageIndex;
            //Hiện cột chi tiết khi chuyển trang để hiện lên textbox
            dgvTinTuc.Columns[4].Visible = true;
            this.LoadGridView();
        }

        protected void dgvTinTuc_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (dgvTinTuc.Rows.Count <= 0)
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