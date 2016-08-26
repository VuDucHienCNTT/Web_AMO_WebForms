using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using Web_AMO.Bussiness;

namespace Web_AMO.Presentation
{
    public partial class Default : System.Web.UI.MasterPage
    {
        DataAccessHelper dah = new DataAccessHelper();
        ThongBaoBLL tbbll = new ThongBaoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptThongBao.DataSource = tbbll.TBCOHIEULUC();
                rptThongBao.DataBind();
            }

            if (Session["tendn"] == null)
            {
                lblchaoban.Text = "Chào bạn!";
                LinkbtnDangNhap.Text = "Đăng nhập";
            }
            else if (Session["quyen"] == "Admin")
            {
                Session["tendn"] = null;
                Response.Write("<script> alert('Đăng xuất thành công. Chào bạn!');window.location.href='../Default.aspx';</script>");
            }
            else
            {
                LinkbtnDangNhap.Text = "Đăng xuất";
                LinkbtnDangNhap.ForeColor = System.Drawing.Color.OrangeRed;
                lblchaoban.Text = "Xin chào: " + Session["tendn"].ToString();
            }
        }

        protected void LinkbtnDangNhap_Click(object sender, EventArgs e)
        {
            if (LinkbtnDangNhap.Text == "Đăng nhập")
            {
                Response.Redirect("DangNhap.aspx");
            }
            else
            {
                Session["tendn"] = null;
                Response.Write("<script> alert('Đăng xuất thành công. Chào bạn!');window.location.href='../Default.aspx';</script>");
                
            }
        }
    }
}