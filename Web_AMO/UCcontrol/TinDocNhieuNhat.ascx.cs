using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using Web_AMO.Bussiness;
namespace Web_AMO.UCcontrol
{
    public partial class TinDocNhieuNhat : System.Web.UI.UserControl
    {
        DataAccessHelper dah = new DataAccessHelper();
        TinTucBLL ttbll = new TinTucBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            rptTinDocNhieu.DataSource = ttbll.TinDocNhieuNhat();
            rptTinDocNhieu.DataBind();
        }
    }
}