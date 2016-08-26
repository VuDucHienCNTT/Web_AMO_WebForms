using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;
namespace Web_AMO.DataAcessLayer
{
    public class ThongBaoDAL
    {
        DataAccessHelper dah = new DataAccessHelper();
        public List<ThongBao1> DanhSachThongBao;

        public List<ThongBao1> LoadThongBao()
        {
            string sql = "select * from THONGBAO order by IDTB asc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<ThongBao1> ds = new List<ThongBao1>();
            foreach (DataRow dr in dt.Rows)
            {
                ThongBao1 tb = new ThongBao1();
                tb.IDTB = int.Parse(dr[0].ToString());
                tb.TieuDeTB = dr[1].ToString();
                tb.NoiDungTB = dr[2].ToString();
                tb.NgayTB = DateTime.Parse(dr[3].ToString());
                tb.TrangThai = dr[4].ToString();
                ds.Add(tb);
            }
            this.DanhSachThongBao = ds;
            return ds;
        }
        //Lấy thông báo có Hiệu lực
        public List<ThongBao1> TBCOHIEULUC()
        {
            string sql = "select * from THONGBAO where TRANGTHAI=N'Có hiệu lực' order by IDTB desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<ThongBao1> ds = new List<ThongBao1>();
            foreach (DataRow dr in dt.Rows)
            {
                ThongBao1 tb = new ThongBao1();
                tb.IDTB = int.Parse(dr[0].ToString());
                tb.TieuDeTB = dr[1].ToString();
                tb.NoiDungTB = dr[2].ToString();
                tb.NgayTB = DateTime.Parse(dr[3].ToString());
                tb.TrangThai = dr[4].ToString();
                ds.Add(tb);
            }
            this.DanhSachThongBao = ds;
            return ds;
        }

        public void ThemTB(ThongBao1 tb)
        {
            string sql = "insert into THONGBAO values (N'" + tb.TieuDeTB + "',N'" + tb.NoiDungTB + "','" + tb.NgayTB + "',N'" + tb.TrangThai + "')";
            dah.ThucThi(sql);
        }
        public void SuaTB(ThongBao1 tb)
        {
            string sql = "update THONGBAO set TIEUDETB=N'" + tb.TieuDeTB + "', NOIDUNGTB=N'" + tb.NoiDungTB + "', NGAYTB='" + tb.NgayTB + "',TRANGTHAI=N'" + tb.TrangThai + "' where IDTB=" + tb.IDTB + "";
            dah.ThucThi(sql);
        }
        public void XoaTB(int idtb)
        {
            string sql = "delete THONGBAO where IDTB='" + idtb + "'";
            dah.ThucThi(sql);
        }
    }
}