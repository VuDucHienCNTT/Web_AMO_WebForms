using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_AMO.Presentation.UCcontrol
{
    public partial class ThoiTiet : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageThoitiet.ImageUrl = ddtthoitiet.SelectedValue;

        }

        protected void ddtthoitiet_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Redirect(ddtthoitiet.SelectedValue);
        }
    }
}