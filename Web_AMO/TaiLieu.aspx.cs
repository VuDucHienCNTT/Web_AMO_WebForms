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
using System.Text.RegularExpressions;
using System.Net;

namespace Web_AMO.Presentation
{
    public partial class TaiLieu : System.Web.UI.Page
    {
        TaiLieu1 et = new TaiLieu1();
        DataAccessHelper dah = new DataAccessHelper();
        TaiLieuBLL bll = new TaiLieuBLL();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GridViewTaiLieu.DataSource = bll.LoadTaiLieu();
                GridViewTaiLieu.DataBind();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "" || txtSearch.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Nhập từ khóa để tìm kiếm');</script>");
            }
            else
            {
                string keyword = txtSearch.Text;
                List<TaiLieu1> cb = new List<TaiLieu1>();
                GridViewTaiLieu.DataSource = bll.TimKiem(keyword);
                GridViewTaiLieu.DataBind();
                lblTimKiemTL.Text = "Kết quả tìm kiếm: " + keyword;
                
            }
        }

        // chuyển trang lùi hoặc tiến
        protected void GridViewTaiLieu_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            string keyword = txtSearch.Text;
            GridViewTaiLieu.PageIndex = e.NewPageIndex;
            GridViewTaiLieu.DataSource = bll.TimKiem(keyword);
            GridViewTaiLieu.DataBind();
        }

        protected void GridViewTaiLieu_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (GridViewTaiLieu.Rows.Count <= 0)
            {
                lblRecordRow.Text = "Không có công văn tài liệu nào";
            }
            else
            {
                lblRecordRow.Visible = false;
            }
        }
    }
}