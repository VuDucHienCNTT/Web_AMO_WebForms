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
using System.Text.RegularExpressions;
namespace Web_AMO.Presentation
{
    public partial class SoDoToChuc : System.Web.UI.Page
    {
        DataAccessHelper dah = new DataAccessHelper();
        CanBoBLL bll = new CanBoBLL();
        CanBo1 et = new CanBo1();
        public void LoadGridView()
        {
            rptCanBo.DataSource = bll.LoadCanBo();
            rptCanBo.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridView();
            }

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == "" || txtSearch.Text == null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "<script>alert('Nhập từ khóa để tìm kiếm');</script>");
            }
            else
            {
                string keyword = txtSearch.Text;
                List<CanBo1> cb = new List<CanBo1>();
                rptCanBo.DataSource = bll.TimKiem(keyword);
                rptCanBo.DataBind();
                lblTimKiemCB.Text = "Kết quả tìm kiếm: " + keyword;
            }
        }
    }
}