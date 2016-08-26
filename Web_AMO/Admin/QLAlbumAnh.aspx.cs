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

namespace Web_AMO.Admin
{
    public partial class QLAlbumAnh : System.Web.UI.Page
    {
        AlbumAnh1 et = new AlbumAnh1();
        DataAccessHelper dah = new DataAccessHelper();
        AlbumAnhBLL bll = new AlbumAnhBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            btnLoadLai.Visible = false;
            LoadGridView();
        }
        public void LoadGridView()
        {
            gridviewAlbumAnh.DataSource = bll.LoadAnh();
            gridviewAlbumAnh.DataBind();
        }
        protected void btnUploadAnh_Click(object sender, EventArgs e)
        {
            btnLoadLai.Visible = true;
            string a = System.IO.Path.GetExtension(upTailieu.FileName);
            if (upTailieu.HasFile)
            {
                if (a.ToLower() == ".jpg" || a.ToLower() == ".jpeg" || a.ToLower() == ".png" || a.ToLower() == ".gif")
                {
                    if (txtngaydanganh.Text!="")
                    {
                        string str = upTailieu.FileName;
                        upTailieu.PostedFile.SaveAs(Server.MapPath("/AlbumAnh/") + str);
                        et.HinhAnh = "AlbumAnh/" + str.ToString();
                        et.Thuoc = ddlAlbumanh.SelectedValue;
                        et.NgayDang = DateTime.Parse(txtngaydanganh.Text);
                        bll.ThemAnh(et);
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Upload ảnh thành công');</script>");
                        btnUploadAnh.Visible = false;
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Bạn chưa chọn ngày upload');</script>");
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Chỉ được upload ảnh .jpg, .jpeg, .png, .gif');</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Bạn chưa chọn ảnh cần upload');</script>");
            }
        }
        protected void btnLoadLai_Click(object sender, EventArgs e)
        {
            txtngaydanganh.Text = "";
            btnUploadAnh.Visible = true;
        }

        protected void gridviewAlbumAnh_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int idanh = int.Parse(e.Values["IDANH"].ToString());
                bll.XoaAnh(idanh);
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Xóa thành công: " + idanh + "');</script>");
                LoadGridView();
            }
            catch
            {
                int idanh = int.Parse(e.Values["IDANH"].ToString());
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Không xóa được: " + idanh + "');</script>");
            }
        }

        protected void gridviewAlbumAnh_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridviewAlbumAnh.PageIndex = e.NewPageIndex;
            this.LoadGridView();
        }

        protected void gridviewAlbumAnh_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (gridviewAlbumAnh.Rows.Count <= 0)
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