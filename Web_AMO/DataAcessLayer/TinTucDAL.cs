using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;
namespace Web_AMO.DataAcessLayer
{
    public class TinTucDAL
    {

        DataAccessHelper dah = new DataAccessHelper();
        public List<TinTuc1> DanhSachTinTuc;

        //Load cán bộ lên trang CanBo.aspx
        public List<TinTuc1> LoadTinTuc()
        {
            string sql = "select * from TINTUC order by IDTINTUC desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());
                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }
        //Lấy ID Tin Tuc hiển thị sang trang DetailTinTuc.aspx
        public List<TinTuc1> LayIDTinTuc(int IDTinTuc)
        {
            string sql = "select * from TINTUC where IDTINTUC=" + IDTinTuc + "";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());

                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }

        //Lấy ID Thể Loại Tin hiển thị tất cả tin trong thể loại sang trang TLTin.aspx
        public List<TinTuc1> LayIDTLTin(string IDTLTin)
        {
            string sql = "select * from TINTUC where IDTHELOAITIN='" + IDTLTin + "' order by IDTINTUC desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());
                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }


        //Tìm kiếm tin tức
        public List<TinTuc1> TimKiem(string keyword)
        {
            string sql = "select * from TINTUC where TIEUDE like N'%" + keyword + "%' or NOIDUNG like N'%" + keyword + "%' or TOMTAT like N'%" + keyword + "%' order by NGAYDANG desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());
                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }
        //Tin mới nhất
        public List<TinTuc1> LayTinMoi()
        {
            string sql = " select top 6 * from TINTUC order by NGAYDANG asc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());
                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }

        // Tin đọc nhiều nhất , hiển thị cuối trang DetailTinTuc.aspx
        public List<TinTuc1> TinDocNhieuNhat()
        {
            string sql = "Select top 8 * from TINTUC order by LUOTXEM desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());
                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }

        //Lấy tin thể loại TL1
        public List<TinTuc1> TheLoaiTinThu1()
        {
            string sql = " Select top 5 * from TINTUC where IDTHELOAITIN='TL1' order by NGAYDANG desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());
                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }

        //Lấy tin thể loại TL2
        public List<TinTuc1> TheLoaiTinThu2()
        {
            string sql = " Select top 5 * from TINTUC where IDTHELOAITIN='TL2' order by NGAYDANG desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());
                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }

        //Lấy tin thể loại TL3
        public List<TinTuc1> TheLoaiTinThu3()
        {
            string sql = " Select top 5 * from TINTUC where IDTHELOAITIN='TL3' order by NGAYDANG desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TinTuc1> ds = new List<TinTuc1>();
            foreach (DataRow dr in dt.Rows)
            {
                TinTuc1 tt = new TinTuc1();
                tt.IDTinTuc = int.Parse(dr[0].ToString());
                tt.IDTheLoaiTin = dr[1].ToString();
                tt.TieuDe = dr[2].ToString();
                tt.TomTat = dr[3].ToString();
                tt.NoiDung = dr[4].ToString();
                tt.AnhDaiDien = dr[5].ToString();
                tt.NgayDang = DateTime.Parse(dr[6].ToString());
                tt.TacGia = dr[7].ToString();
                tt.NguoiDang = dr[8].ToString();
                tt.LuotXem = int.Parse(dr[9].ToString());
                ds.Add(tt);
            }
            this.DanhSachTinTuc = ds;
            return ds;
        }


        //Kiểm Tra mã tin tức trùng
        public bool KiemTra(int IDTinTuc)
        {
            string sql = "select count(*) from TINTUC where IDTINTUC='" + IDTinTuc + "'";
            return dah.KiemTraMaTrung(sql);
        }
        public void ThemTinTuc(TinTuc1 tt)
        {
            string sql = "insert into TINTUC values ('" + tt.IDTheLoaiTin + "',N'" + tt.TieuDe + "',N'" + tt.TomTat + "',N'" + tt.NoiDung + "','" + tt.AnhDaiDien + "','" + tt.NgayDang + "',N'" + tt.TacGia + "',N'" + tt.NguoiDang + "'," + tt.LuotXem + ")";
            dah.ThucThi(sql);
        }
        public void SuaTinTuc(TinTuc1 tt)
        {
            string sql = "update TINTUC set IDTHELOAITIN='" + tt.IDTheLoaiTin + "', TIEUDE=N'" + tt.TieuDe + "', TOMTAT=N'" + tt.TomTat + "', NOIDUNG=N'" + tt.NoiDung + "', ANHDAIDIEN='" + tt.AnhDaiDien + "', NGAYDANG='" + tt.NgayDang + "', TACGIA=N'" + tt.TacGia + "', NGUOIDANG=N'" + tt.NguoiDang + "', LUOTXEM=" + tt.LuotXem + " where IDTINTUC='" + tt.IDTinTuc + "'";
            dah.ThucThi(sql);
        }
        public void XoaTinTuc(int idTinTuc)
        {
            string sql = "delete TINTUC where IDTINTUC='" + idTinTuc + "'";
            dah.ThucThi(sql);
        }
        //Update lượt xem Tin
        public void UpdateLuotXem(int idTinTuc)
        {
            string sql = "update TINTUC set LUOTXEM=LUOTXEM+1 where IDTINTUC='" + idTinTuc + "'";
            dah.ThucThi(sql);
        }
    }
}