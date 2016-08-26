using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.Bussiness;
using Web_AMO.DataAcessLayer;
using System.Data;
namespace Web_AMO
{
    public partial class TLTin : System.Web.UI.Page
    {
        TheLoaiBLL tltinbll = new TheLoaiBLL();
        TinTucBLL ttbll = new TinTucBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }
        void LoadData()
        {
            
            PagedDataSource pds = new PagedDataSource();
            string ID = Request.QueryString["id"].ToString();
            pds.DataSource = ttbll.LayIDTLTin(ID);
            pds.AllowPaging = true;
            pds.PageSize = 15;
            pds.CurrentPageIndex = PageNumber;
            if (pds.PageCount > 1)
            {

                rptPhanTrang.Visible = true;
                System.Collections.ArrayList pages = new System.Collections.ArrayList();

                for (int i = 0; i < pds.PageCount; i++)

                    pages.Add((i + 1).ToString());

                rptPhanTrang.DataSource = pages;
                rptPhanTrang.DataBind();
            }
            else

            rptPhanTrang.Visible = false;
            rptTheloaitin.DataSource = pds;
            rptTheloaitin.DataBind();

        }
        public int PageNumber
        {
            get
            {
                if (ViewState["PageNumber"] != null)
                    return Convert.ToInt32(ViewState["PageNumber"]);
                else
                    return 0;
            }
            set
            {
                ViewState["PageNumber"] = value;
            }
        }

        protected void rptPhanTrang_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            PageNumber = Convert.ToInt32(e.CommandArgument) - 1;
            LoadData();
        }
    }
}