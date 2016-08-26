using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;
using System.IO;
namespace Web_AMO
{
    public class Global : System.Web.HttpApplication
    {
      
        protected void Application_Start(object sender, EventArgs e)
        {
            //RegisterRouter(RouteTable.Routes);
            Application.Lock();
            StreamReader sr = new StreamReader(Server.MapPath("TruyCap.txt"));
            int counter = int.Parse(sr.ReadLine());
            sr.Close();
            sr.Dispose();
            Application["counter"] = counter;
            Application["online"] = 0;
            Application.UnLock();
        }
        void RegisterRouter(RouteCollection router)
        {
            //router.MapPageRoute("TrangChu", "trang-chu", "~/Default.aspx");
            //router.MapPageRoute("GioiThieu", "gioi-thieu-chung", "~/GioiThieuChung.aspx");
            //router.MapPageRoute("SoDoToChuc", "so-do-to-chuc", "~/CanBo.aspx");
            //router.MapPageRoute("SoDoTrang", "so-do-trang", "~/SiteMap.aspx");
            //router.MapPageRoute("CongVanTaiLieu", "cong-van-tai-lieu", "~/TaiLieu.aspx");
            //router.MapPageRoute("LichLamViec", "lich-lam-viec", "~/LichLV.aspx");
            //router.MapPageRoute("TinTuc", "tin-tuc", "~/TinTuc.aspx");
            //router.MapPageRoute("HinhAnh", "thu-vien-anh", "~/Album.aspx");
            //router.MapPageRoute("LienHe", "lien-he", "~/LienHe.aspx");
            //router.MapPageRoute("BanDo", "ban-do", "~/BanDo.aspx");
            //router.MapPageRoute("DangKy", "dang-ky", "~/DangKy.aspx");
            //router.MapPageRoute("DangNhap", "dang-nhap", "~/DangNhap.aspx");
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["counter"] = Convert.ToInt64(Application["counter"]) + 1;
            Application["online"] = Convert.ToInt64(Application["online"]) + 1;
            StreamWriter sw = new StreamWriter(Server.MapPath("TruyCap.txt"));
            sw.Write(Application["counter"]);
            sw.Close();
            sw.Dispose();
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            Application["online"] = Convert.ToInt64(Application["online"]) - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}