using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.DataAcessLayer;

namespace Web_AMO.Presentation
{
    public partial class DangNhap : System.Web.UI.Page
    {
        DataAccessHelper dah = new DataAccessHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Browser.Cookies) // Trình duyệt có hỗ trợ cookies hay không
                {
                    // Thiết lập thời gian tồn tại của cookie
                    // Lưu cookie vào máy của user
                    //Lấy cookie user đã tồn tại gán vào text Username
                    if (Request.Cookies["tendn"] != null && Request.Cookies["matkhau"] != null && Request.Cookies["quyen"] != null)
                    {

                        HttpCookie cookie_tendn = new HttpCookie("tendn");
                        cookie_tendn.Expires = DateTime.Now.AddDays(30); //30 ngày
                        Response.Cookies.Add(cookie_tendn);
                        txttendn.Text = Request.Cookies["tendn"].Value;

                        // tương tự Password
                        HttpCookie cookie_matkhau = new HttpCookie("matkhau");
                        cookie_matkhau.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookie_matkhau);
                        txtmatkhau.Text = Request.Cookies["matkhau"].Value;

                        // quyền hạn
                        HttpCookie cookie_quyen = new HttpCookie("quyen");
                        cookie_quyen.Expires = DateTime.Now.AddDays(30);
                        Response.Cookies.Add(cookie_quyen);
                        ddlquyen.SelectedValue = Request.Cookies["quyen"].Value;
                    }
                }
            }
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            //Enter khi đăng nhập
            txttendn.Attributes.Add("onKeyPress", "doClick('" + btnDangNhap.ClientID + "',event)");

            string Tendangnhap = txttendn.Text;
            string Password = txtmatkhau.Text;
            string Quyen = ddlquyen.SelectedValue;
            int kq = dah.Lay1GiaTri("Select count(*) from DANGKY where TENDANGNHAP = '" + Tendangnhap + "' and PASSWORD = '" + Password + "' and QUYEN = '" + Quyen + "'");
            if (kq > 0)
            {
                if (ckbghinho.Checked) // Nếu người dùng check vào Ghi nhớ
                {
                    //Lưu cookie user
                    HttpCookie cookie_tendn = new HttpCookie("tendn", txttendn.Text);
                    cookie_tendn.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie_tendn);

                    //Lưu cookie pass
                    HttpCookie cookie_matkhau = new HttpCookie("matkhau", txtmatkhau.Text);
                    cookie_matkhau.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie_matkhau);

                    //Lưu cookie quyen
                    HttpCookie cookie_quyen = new HttpCookie("quyen", ddlquyen.SelectedValue);
                    cookie_quyen.Expires = DateTime.Now.AddDays(30);
                    Response.Cookies.Add(cookie_quyen);
                }

                else // người dùng không check vào ghi nhớ
                {
                    //Xóa cookie user
                    HttpCookie cookie_tendn = new HttpCookie("tendn", "");
                    cookie_tendn.Expires = DateTime.Now;
                    Response.Cookies.Add(cookie_tendn);

                    //Xóa cookie pass
                    HttpCookie cookie_matkhau = new HttpCookie("matkhau", "");
                    cookie_matkhau.Expires = DateTime.Now;
                    Response.Cookies.Add(cookie_matkhau);

                    //Xóa cookie quyền
                    HttpCookie cookie_quyen = new HttpCookie("quyen", "");
                    cookie_quyen.Expires = DateTime.Now;
                    Response.Cookies.Add(cookie_quyen);
                }
                if (ddlquyen.SelectedValue == "Admin")
                {
                    Session["tendn"] = txttendn.Text;
                    Session["quyen"] = ddlquyen.SelectedValue;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Đăng nhập quyền Admin thành công');window.location.href='/Admin/QLLichLV.aspx';</script>");
                }
                else
                {
                    Session["tendn"] = txttendn.Text;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Đăng nhập quyền User thành công');window.location.href='../Default.aspx';</script>");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Sai tên đăng nhập, mật khẩu hoặc quyền hạn');</script>");
                txtmatkhau.Focus();
            }
        }
    }
}