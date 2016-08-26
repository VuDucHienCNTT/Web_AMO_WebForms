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
    public class TheLoaiBLL
    {
         TheLoaiDAL dal = new TheLoaiDAL();
         public List<TheLoai1> LoadTheLoai()
         {
             return dal.LoadTheLoai();
         }
         public List<TheLoai1> LayIDTheLoaiTin()
         {
             return dal.LayIDTheLoaiTin();
         }
        public void ThemTheLoaiTin(TheLoai1 ttt)
         {
             dal.ThemTheLoaiTin(ttt);
         }
        public void SuaTheLoaiTin(TheLoai1 ttt)
         {
             dal.SuaTheLoaiTin(ttt);
         }
         public void XoaTheLoaiTin(string idtheloaitin)
         {
             dal.XoaTheLoaiTin(idtheloaitin);
         }
    }
}