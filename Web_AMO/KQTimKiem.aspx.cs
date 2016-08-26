using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.Bussiness;
namespace Web_AMO
{
    public partial class KQTimKiem : System.Web.UI.Page
    {
        List<TinTuc1> ds = new List<TinTuc1>();
        TinTucBLL ttbll = new TinTucBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string keyword = Request.QueryString["keyword"].ToString();
            CollectionPager1.DataSource = ttbll.TimKiem(keyword);
            CollectionPager1.BindToControl = rptTimKiemTinTuc;
            rptTimKiemTinTuc.DataSource = CollectionPager1.DataSourcePaged;

            lblKQTimKiem.Text = "Kết quả tìm kiếm: " + keyword ; 
        }
    }
}