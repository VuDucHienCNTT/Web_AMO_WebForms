using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Bussiness;
namespace Web_AMO
{
    public partial class DetailLichLV : System.Web.UI.Page
    {
        LichLamViecBLL llvbll = new LichLamViecBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ID = Request.QueryString["id"].ToString();
                llvbll.UpdateLuotXem(int.Parse(ID));
                rptDetailLichLV.DataSource = llvbll.LayIDLichLV(ID);
                rptDetailLichLV.DataBind();
            }
        }
    }
}