using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_AMO.Presentation.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tendn"] == null || Session["quyen"] != "Admin")
            {
                Response.Write("<script> alert('Đăng nhập quyền Admin trước khi quản trị website');window.location.href='../DangNhap.aspx';</script>");
            }
            else
            {
                lblchaoban_admin.Text = "Xin chào: " + Session["tendn"].ToString();
            }
        }

        protected void btnDangxuat_Click(object sender, EventArgs e)
        {
            Session["tendn"] = null;
            Response.Write("<script> alert('Đã hoàn thành. Chuyển sang trang người dùng...');window.location.href='../Default.aspx';</script>");
        }
    }
}