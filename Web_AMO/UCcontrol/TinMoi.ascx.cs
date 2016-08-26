using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using Web_AMO.Bussiness;

namespace Web_AMO.Presentation.UCcontrol
{
    public partial class TinMoi : System.Web.UI.UserControl
    {
        DataAccessHelper dah = new DataAccessHelper();
        TinTucBLL bll = new TinTucBLL();
        TinTuc1 tt = new TinTuc1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
            rptTinMoi1.DataSource = bll.LayTinMoi();
            rptTinMoi1.DataBind();
            }
        }
    }
}