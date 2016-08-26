using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_AMO.UCcontrol
{
    public partial class ThongKeTruyCap : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
                lblUsersOnline.Text = Application["online"].ToString();
                lblUsersCount.Text = Application["counter"].ToString();
            //}
        }
    }
}