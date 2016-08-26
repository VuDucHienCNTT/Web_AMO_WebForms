using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;
namespace Web_AMO.DataAcessLayer
{
    public class TaiLieuDAL
    {
        DataAccessHelper dah = new DataAccessHelper();
        public List<TaiLieu1> DanhSachTaiLieu;
        //Load dữ liệu lên
        public List<TaiLieu1> LoadTaiLieu()
        {
            string sql = "select * from TAILIEU order by IDFILE desc";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TaiLieu1> ds = new List<TaiLieu1>();
            foreach (DataRow dr in dt.Rows)
            {
                TaiLieu1 tl = new TaiLieu1();
                tl.IDFile = int.Parse(dr[0].ToString());
                tl.TenFile = dr[1].ToString();
                tl.Ngaydang = DateTime.Parse(dr[2].ToString());
                tl.Link = dr[3].ToString();
                ds.Add(tl);
            }
            this.DanhSachTaiLieu = ds;
            return ds;
        }
        // tìm kiếm tài liệu và công văn
        public List<TaiLieu1> TimKiem(string keyword)
        {
            string sql = "select * from TAILIEU where TENFILE like N'%" + keyword + "%' order by IDFILE desc";    
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<TaiLieu1> ds = new List<TaiLieu1>();
            foreach (DataRow dr in dt.Rows)
            {
                TaiLieu1 tl = new TaiLieu1();
                tl.IDFile = int.Parse(dr[0].ToString());
                tl.TenFile = dr[1].ToString();
                tl.Ngaydang = DateTime.Parse(dr[2].ToString());
                tl.Link = dr[3].ToString();
                ds.Add(tl);
            }
            this.DanhSachTaiLieu = ds;
            return ds;
        }

        public void ThemFile(TaiLieu1 tl)
        {
            string sql = "insert into TAILIEU values(N'" + tl.TenFile + "','" + tl.Ngaydang+"','" + tl.Link + "')";
            dah.ThucThi(sql);
        }
        public void XoaFile(int idfile)
        {
            string sql = "delete TAILIEU where IDFILE='" + idfile + "'";
            dah.ThucThi(sql);
        }
    }
}