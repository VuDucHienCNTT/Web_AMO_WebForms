using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Bussiness;
using Web_AMO.DataAcessLayer;
namespace Web_AMO.Presentation.UCcontrol
{
    public partial class TinChinh : System.Web.UI.UserControl
    {
        TinTucBLL ttbll = new TinTucBLL();
        protected void Page_Load(object sender, EventArgs e)
        {    
            if (!IsPostBack)
            {
                CollectionPager1.DataSource = ttbll.LoadTinTuc();
                CollectionPager1.BindToControl = rptTinTuc;
                rptTinTuc.DataSource = CollectionPager1.DataSourcePaged;
            }
        }
    }
}