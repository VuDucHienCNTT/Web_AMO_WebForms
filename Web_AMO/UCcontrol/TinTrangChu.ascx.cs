using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.Bussiness;
using Web_AMO.DataAcessLayer;

namespace Web_AMO.UCcontrol
{
    public partial class TinTrangChu : System.Web.UI.UserControl
    {
        TinTucBLL bll = new TinTucBLL();
        List<TinTuc1> tt = new List<TinTuc1>(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                rptKTTV.DataSource = bll.TheLoaiTinThu1();
                rptKTTV.DataBind();
                rptChinhTri.DataSource = bll.TheLoaiTinThu2();
                rptChinhTri.DataBind();
                rptXaHoi.DataSource = bll.TheLoaiTinThu3();
                rptXaHoi.DataBind();
            }
        }     
    }
}