using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using System.Text;
namespace Web_AMO.Bussiness
{
    public class AlbumAnhBLL
    {
        AlbumAnhDAL dal = new AlbumAnhDAL();

        public List<AlbumAnh1> LoadAnh()
        {
            return dal.LoadAnh();
        }
        public List<AlbumAnh1> AnhTrongCoQuan()
        {
            return dal.AnhTrongCoQuan();
        }
        public List<AlbumAnh1> AnhKhac()
        {
            return dal.AnhKhac();
        }
        public void ThemAnh(AlbumAnh1 aa)
        {
            dal.ThemAnh(aa);
        }

        public void SuaAnh(AlbumAnh1 aa)
        {
            dal.SuaAnh(aa);
        }
        public void XoaAnh(int idanh)
        {
            dal.XoaAnh(idanh);
        }
    }
}