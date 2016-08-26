using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;
namespace Web_AMO.DataAcessLayer
{
    public class LichLamViecDAL
    {
        DataAccessHelper dah = new DataAccessHelper();
        public List<LichLamViec1> DanhSachLichLV;

        //Load cán bộ lên trang LichLamViec.aspx
        public List<LichLamViec1> LoadLichLV()
        {
            string sql = "select * from LICHLAMVIEC order by NGAYDANG desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<LichLamViec1> ds = new List<LichLamViec1>();
            foreach (DataRow dr in dt.Rows)
            {
                LichLamViec1 llv = new LichLamViec1();
                llv.IDLichLV = int.Parse(dr[0].ToString());
                llv.TieuDe = dr[1].ToString();
                llv.LinK = dr[2].ToString();
                llv.TrangThai = dr[3].ToString();
                llv.NgayDang = DateTime.Parse(dr[4].ToString());
                llv.LuotXem = int.Parse(dr[5].ToString());
                llv.NhacLich = dr[6].ToString();
                ds.Add(llv);
            }
            this.DanhSachLichLV = ds;
            return ds;
        }
        //Lấy Id Lịch Làm việc để hiển thị sang trang DetailLichLV.aspx
        public List<LichLamViec1> LayIDLichLV(string IDLichLV)
        {
            string sql = "select * from LICHLAMVIEC where IDLICHLV='" + IDLichLV + "'";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<LichLamViec1> ds = new List<LichLamViec1>();
            foreach (DataRow dr in dt.Rows)
            {
                LichLamViec1 llv = new LichLamViec1();
                llv.IDLichLV = int.Parse(dr[0].ToString());
                llv.TieuDe = dr[1].ToString();
                llv.LinK = dr[2].ToString();
                llv.TrangThai = dr[3].ToString();
                llv.NgayDang = DateTime.Parse(dr[4].ToString());
                llv.LuotXem = int.Parse(dr[5].ToString());
                llv.NhacLich = dr[6].ToString();
                ds.Add(llv);
            }
            this.DanhSachLichLV = ds;
            return ds;
        }
        // Tìm kiếm
        public List<LichLamViec1> TimKiem(string keyword)
        {
            string sql = "select * from LICHLAMVIEC where TIEUDE like N'%" + keyword + "%'";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<LichLamViec1> ds = new List<LichLamViec1>();
            foreach (DataRow dr in dt.Rows)
            {
                LichLamViec1 llv = new LichLamViec1();
                llv.IDLichLV = int.Parse(dr[0].ToString());
                llv.TieuDe = dr[1].ToString();
                llv.LinK = dr[2].ToString();
                llv.TrangThai = dr[3].ToString();
                llv.NgayDang = DateTime.Parse(dr[4].ToString());
                llv.LuotXem = int.Parse(dr[5].ToString());
                llv.NhacLich = dr[6].ToString();
                ds.Add(llv);
            }
            this.DanhSachLichLV = ds;
            return ds;
        }

        public void ThemLichLV(LichLamViec1 llv)
        {
            string sql = "insert into LICHLAMVIEC values (N'" + llv.TieuDe + "','" + llv.LinK + "',N'" + llv.TrangThai + "','" + llv.NgayDang + "','" + llv.LuotXem + "',N'" + llv.NhacLich + "')";
            dah.ThucThi(sql);
        }
        public void SuaLichLV(LichLamViec1 llv)
        {
            string sql = "update LICHLAMVIEC set TIEUDE=N'" + llv.TieuDe + "', LINK='" + llv.LinK + "', TRANGTHAI=N'" + llv.TrangThai + "', NGAYDANG='" + llv.NgayDang + "', LUOTXEM='" + llv.LuotXem + "', NHACLICH=N'" + llv.NhacLich + "' where IDLICHLV='" + llv.IDLichLV + "'";
            dah.ThucThi(sql);
        }
        public void XoaLichLV(int idLichLV)
        {
            string sql = "delete LICHLAMVIEC where IDLICHLV='" + idLichLV + "'";
            dah.ThucThi(sql);
        }
        //Update lượt xem Lịch làm việc
        public void UpdateLuotXem(int idLich)
        {
            string sql = "update LICHLAMVIEC set LUOTXEM=LUOTXEM+1 where IDLICHLV='" + idLich + "'";
            dah.ThucThi(sql);
        }
    }
}