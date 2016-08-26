using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;

namespace Web_AMO.DataAcessLayer
{
    public class AlbumAnhDAL
    {
        DataAccessHelper dah = new DataAccessHelper();

        public List<AlbumAnh1> DanhSachAnh;

        //Load ảnh lên trang Album.aspx và trang QLAlbumAnh.aspx
        public List<AlbumAnh1> LoadAnh()
        {
            string sql = "select * from ALBUMANH order by THUOC asc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<AlbumAnh1> ds = new List<AlbumAnh1>();
            foreach (DataRow dr in dt.Rows)
            {
                AlbumAnh1 aa = new AlbumAnh1();
                aa.IdAnh = int.Parse(dr[0].ToString());
                aa.HinhAnh = dr[1].ToString();
                aa.Thuoc = dr[2].ToString();
                aa.NgayDang = DateTime.Parse(dr[3].ToString());
                ds.Add(aa);
            }
            this.DanhSachAnh = ds;
            return ds;
        }
        //Lấy toàn bộ ảnh trong Cơ Quan?
        public List<AlbumAnh1> AnhTrongCoQuan()
        {
            string sql = "Select * from ALBUMANH where THUOC=N'Cơ Quan' order by NGAYDANG desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<AlbumAnh1> ds = new List<AlbumAnh1>();
            foreach (DataRow dr in dt.Rows)
            {
                AlbumAnh1 aa = new AlbumAnh1();
                aa.IdAnh = int.Parse(dr[0].ToString());
                aa.HinhAnh = dr[1].ToString();
                aa.Thuoc = dr[2].ToString();
                aa.NgayDang = DateTime.Parse(dr[3].ToString());
                ds.Add(aa);
            }
            this.DanhSachAnh = ds;
            return ds;
        }

        //Lấy toàn bộ ảnh Ngoài Cơ Quan?
        public List<AlbumAnh1> AnhKhac()
        {
            string sql = "Select * from ALBUMANH where THUOC=N'Khác' order by NGAYDANG desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<AlbumAnh1> ds = new List<AlbumAnh1>();
            foreach (DataRow dr in dt.Rows)
            {
                AlbumAnh1 aa = new AlbumAnh1();
                aa.IdAnh = int.Parse(dr[0].ToString());
                aa.HinhAnh = dr[1].ToString();
                aa.Thuoc = dr[2].ToString();
                aa.NgayDang = DateTime.Parse(dr[3].ToString());
                ds.Add(aa);
            }
            this.DanhSachAnh = ds;
            return ds;
        }


        public void ThemAnh(AlbumAnh1 aa)
        {
            string sql = "insert into ALBUMANH values (N'" + aa.HinhAnh + "',N'" + aa.Thuoc + "','" + aa.NgayDang + "')";
            dah.ThucThi(sql);
        }
        public void SuaAnh(AlbumAnh1 aa)
        {
            string sql = "update ALBUMANH set HINHANH=N '" + aa.HinhAnh + "', THUOC=N'" + aa.Thuoc + "', NGAYDANG='" + aa.NgayDang + "' where IDANH=" + aa.IdAnh + "";
            dah.ThucThi(sql);
        }
        public void XoaAnh(int idanh)
        {
            string sql = "delete ALBUMANH where IDANH='" + idanh + "'";
            dah.ThucThi(sql);
        }

    }
}