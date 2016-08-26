using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;
namespace Web_AMO.DataAcessLayer
{
    public class TheLoaiDAL
    {
        DataAccessHelper dah = new DataAccessHelper();
        public List<TheLoai1> DanhSachTheLoai;

        //Load thể loại  
        public List<TheLoai1> LoadTheLoai()
        {
            string sql = "select * from THELOAITIN";
            dah = new DataAccessHelper();
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TheLoai1> ds = new List<TheLoai1>();
            foreach (DataRow dr in dt.Rows)
            {
                TheLoai1 tl = new TheLoai1();
                tl.IdTheLoaiTin = dr[0].ToString();
                tl.TenTheLoaiTin = dr[1].ToString();
                ds.Add(tl);
            }
            this.DanhSachTheLoai = ds;
            return ds;
        }


        //Đổ lên dropdownlist
        public List<TheLoai1> LayIDTheLoaiTin()
        {
            string sql = "select * from THELOAITIN";
            dah = new DataAccessHelper();
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TheLoai1> ds = new List<TheLoai1>();
            foreach (DataRow dr in dt.Rows)
            {
                TheLoai1 tl = new TheLoai1();
                tl.IdTheLoaiTin = dr[0].ToString();
                tl.TenTheLoaiTin = dr[1].ToString();
                ds.Add(tl);
            }
            this.DanhSachTheLoai = ds;
            return ds;
        }

        public void ThemTheLoaiTin(TheLoai1 ttt)
        {
            string sql = "insert into THELOAITIN values ('" + ttt.IdTheLoaiTin + "' ,N'" + ttt.TenTheLoaiTin + "')";
            dah.ThucThi(sql);
        }
        public void SuaTheLoaiTin(TheLoai1 ttt)
        {
            string sql = "update THELOAITIN set TENTHELOAITIN=N'" + ttt.TenTheLoaiTin + "' where IDTHELOAITIN='" + ttt.IdTheLoaiTin + "'";
            dah.ThucThi(sql);
        }
        public void XoaTheLoaiTin(string idtheloaitin)
        {
            string sql = "delete THELOAITIN where IDTHELOAITIN='" + idtheloaitin + "'";
            dah.ThucThi(sql);
        }
    }
}