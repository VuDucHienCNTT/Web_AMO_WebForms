using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using Web_AMO.Bussiness;
namespace Web_AMO
{
    public partial class LichLV : System.Web.UI.Page
    {
        LichLamViecBLL llvbll = new LichLamViecBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CollectionPager1.DataSource = llvbll.LoadLichLV();
                CollectionPager1.BindToControl = rptLichLV;
                rptLichLV.DataSource = CollectionPager1.DataSourcePaged;
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
                List<LichLamViec1> llv = new List<LichLamViec1>();
                rptLichLV.DataSource = llvbll.TimKiem(keyword);
                rptLichLV.DataBind();
                lblTimKiemLLV.Text = "Kết quả tìm kiếm : " + keyword;
            }
        }
    }
}