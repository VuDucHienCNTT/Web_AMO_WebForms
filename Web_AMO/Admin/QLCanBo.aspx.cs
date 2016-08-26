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
using System.Data.SqlClient;
using System.IO;

namespace Web_AMO.Presentation.Admin
{
    public partial class QLCanBo : System.Web.UI.Page
    {
        CanBoBLL bll = new CanBoBLL();
        CanBo1 cb = new CanBo1();
        DataAccessHelper dah = new DataAccessHelper();
        public void LoadGridView()
        {
            dgvDSCB.DataSource = bll.LoadCanBo();
            dgvDSCB.DataBind();
            //Ẩn cột chi tiết khi load lên gridview
            dgvDSCB.Columns[4].Visible = false;
            dgvDSCB.Columns[8].Visible = false;

            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/CKFinder";
            _FileBrowser.SetupCKEditor(CkThongtinchitiet);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridView();
                btnlammoi.Visible = false;
                btnThem.Visible = true;
                btnSua.Visible = false;
                btnXoa.Visible = false;
            }
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string a = System.IO.Path.GetExtension(UploadAnh.FileName);

            if (a.ToLower() == ".jpg" || a.ToLower() == ".jpeg" || a.ToLower() == ".png" || a.ToLower() == ".gif")
            {
                cb.HoTen = txthotencb.Text;
                cb.ChucVu = txtchucvu.Text;
                cb.BangCap = txtbangcap.Text;
                cb.EMail = txtemail.Text;
                cb.QueQuan = txtquequan.Text;
                if (txtngaysinh.Text == "" || txtngaysinh == null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Chưa nhập ngày sinh cho cán bộ');</script>");
                    return;
                }
                else
                {
                    cb.NgaySinh = DateTime.Parse(txtngaysinh.Text);
                }
                cb.SoDT = double.Parse(txtsodienthoai.Text);
                cb.DetailCB = CkThongtinchitiet.Text;
                string str = UploadAnh.FileName;
                UploadAnh.PostedFile.SaveAs(Server.MapPath(".") + "/ImageCanBo/" + str);
                cb.AnhMOTA = "ImageCanBo/" + str.ToString();
                bll.ThemCB(cb);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Thêm cán bộ thành công');</script>");
                btnlammoi.Visible = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Chỉ được upfile ảnh .jpg, .jpeg, .png, .gif');</script>");
            }
        }

        protected void btnSua_Click(object sender, EventArgs e)
        {
            btnlammoi.Visible = true;
            string a = System.IO.Path.GetExtension(UploadAnh.FileName);
            if (a.ToLower() == ".jpg" || a.ToLower() == ".jpeg" || a.ToLower() == ".png" || a.ToLower() == ".gif")
            {
                btnSua.Visible = false;
                btnXoa.Visible = false;
                cb.IDCB = int.Parse(txtidcb.Text);
                cb.HoTen = txthotencb.Text;
                cb.ChucVu = txtchucvu.Text;
                cb.BangCap = txtbangcap.Text;
                cb.EMail = txtemail.Text;
                cb.QueQuan = txtquequan.Text;
                if (txtngaysinh.Text == "" || txtngaysinh.Text == null)
                {
                    cb.NgaySinh = DateTime.Parse(lblngaysinh.Text);
                }
                else
                {
                    cb.NgaySinh = DateTime.Parse(txtngaysinh.Text);
                }
                cb.SoDT = double.Parse(txtsodienthoai.Text);
                cb.DetailCB = CkThongtinchitiet.Text;

                    string str = UploadAnh.FileName;
                    UploadAnh.PostedFile.SaveAs(Server.MapPath(".") + "/ImageCanBo/" + str);
                    cb.AnhMOTA = "ImageCanBo/" + str.ToString();
                bll.SuaCB(cb);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Sửa cán bộ thành công');</script>");
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Chỉ được upfile ảnh .jpg, .jpeg, .png, .gif');</script>");
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            btnThem.Visible = false;
            btnSua.Visible = false;
            btnXoa.Visible = false;
            btnlammoi.Visible = true;
            if (txtidcb.Text != "")
            {
                bll.XoaCB(int.Parse(txtidcb.Text));
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Xóa cán bộ thành công');</script>");

                btnlammoi.Visible = true;
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Lỗi không xóa được');</script>");
            }

        }

        protected void dgvDSCB_SelectedIndexChanged(object sender, EventArgs e)
        {
            btnThem.Visible = false;
            btnSua.Visible = true;
            btnXoa.Visible = true;
            btnlammoi.Visible = true;
            int dong = dgvDSCB.SelectedIndex;
            List<CanBo1> ds = new List<CanBo1>();
            ds = bll.LoadCanBo();
            txtidcb.Text = HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[0].Text.ToString()));
            txthotencb.Text = HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[1].Text.ToString()));
            txtchucvu.Text = HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[2].Text.ToString()));
            txtbangcap.Text = HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[3].Text.ToString()));
            txtemail.Text = HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[4].Text.ToString()));
            txtquequan.Text = HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[5].Text.ToString()));
            lblngaysinh.Text = HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[6].Text.ToString()));
            txtsodienthoai.Text = "0" + HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[7].Text.ToString()));
            CkThongtinchitiet.Text = HttpUtility.HtmlDecode((string)(dgvDSCB.Rows[dong].Cells[8].Text.ToString()));
        }
        protected void btnlammoi_Click(object sender, EventArgs e)
        {
            LoadGridView();
            btnlammoi.Visible = false;
            Response.Redirect("QLCanBo.aspx");

        }
        protected void dgvDSCB_PageIndexChanging1(object sender, GridViewPageEventArgs e)
        {
            dgvDSCB.PageIndex = e.NewPageIndex;
            //Hiện cột chi tiết khi chuyển trang để hiện lên textbox
            dgvDSCB.Columns[4].Visible = false;
            dgvDSCB.Columns[8].Visible = true;
            this.LoadGridView();
        }

        protected void dgvDSCB_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (dgvDSCB.Rows.Count <= 0)
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