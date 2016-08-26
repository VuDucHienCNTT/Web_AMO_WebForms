using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
namespace Web_AMO.Bussiness
{
    public class TaiLieuBLL
    {
        TaiLieuDAL tldal = new TaiLieuDAL();

        public List<TaiLieu1> LoadTaiLieu()
        {
            return tldal.LoadTaiLieu();
        }
        public List<TaiLieu1> TimKiem(string keyword)
        {
            return tldal.TimKiem(keyword);
        }
        public void ThemFile(TaiLieu1 tl)
        {
            tldal.ThemFile(tl);
        }
        public void XoaFile(int idfile)
        {
            tldal.XoaFile(idfile);
        }

    }
}