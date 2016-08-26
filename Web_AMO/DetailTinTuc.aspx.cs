using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using Web_AMO.Bussiness;
using System.Data;
namespace Web_AMO
{
    public partial class DetailTinTuc : System.Web.UI.Page
    {
        TinTucBLL ttbll = new TinTucBLL();
        List<TinTuc1> ds = new List<TinTuc1>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ID = Request.QueryString["id"].ToString();
                ttbll.UpdateLuotXem(int.Parse(ID));
                rptDetailTinTuc.DataSource = ttbll.LayIDTinTuc(int.Parse(ID));
                rptDetailTinTuc.DataBind();
            }         
        }
    }
}