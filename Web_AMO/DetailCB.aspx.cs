using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using Web_AMO.Bussiness;

namespace Web_AMO
{
    public partial class DetailCB : System.Web.UI.Page
    {
        DataAccessHelper dah = new DataAccessHelper();
        CanBoBLL bll = new CanBoBLL();
        CanBo1 et = new CanBo1();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ID = Request.QueryString["idcb"].ToString();
                rptDetail1.DataSource = bll.LayIDCanBo(ID);
                rptDetail1.DataBind();
            }
        }
    }
}