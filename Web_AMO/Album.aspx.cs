using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using Web_AMO.Bussiness;
namespace Web_AMO.Presentation
{
    public partial class Album : System.Web.UI.Page
    {
        AlbumAnhBLL aabll = new AlbumAnhBLL();
        public void LoadGridView()
        {
            rptAlbumCoQuan.DataSource = aabll.AnhTrongCoQuan();
            rptAlbumCoQuan.DataBind();

            rptAlbumKhac.DataSource = aabll.AnhKhac();
            rptAlbumKhac.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadGridView();
            }
        }
    }
}