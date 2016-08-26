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
    public partial class DangKy : System.Web.UI.Page
    {
        DataAccessHelper dah = new DataAccessHelper();
        DangKyBLL bll = new DangKyBLL();
        DangKy1 dk1 = new DangKy1();
        CanBoBLL cbbll = new CanBoBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["tendn"] != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Đăng nhập đang hoạt động');window.location.href='Default.aspx';</script>");
            }
        }

        protected void btnDangKy_Click(object sender, EventArgs e)
        {
            if (ddlquyen.SelectedValue == "Admin")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Bạn chỉ được đăng ký quyền User. Vui lòng thử lại');</script>");
                return;
            }
            else
            {
                dk1.Quyen = ddlquyen.Text;
            }
            dk1.TenDN = txttendn.Text;
            dk1.Pass = txtmatkhau.Text;
            dk1.Repass = txtlaimatkhau.Text;
            dk1.Email = txtemail.Text;
            dk1.GioiTinh = ddlgioitinh.Text;
            dk1.NgaySinh = txtngaysinh.Text;
            dk1.DiaChi = txtdiachi.Text;
            dk1.SDT = double.Parse(txtsdt.Text);
            bll.ThemTaiKhoan(dk1);
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Đăng ký thành công. Đăng nhập tài khoản của bạn');window.location.href='DangNhap.aspx';</script>");
        }
    }
}