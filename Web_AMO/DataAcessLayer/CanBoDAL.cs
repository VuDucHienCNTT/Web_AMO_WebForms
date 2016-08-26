using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;

namespace Web_AMO.DataAcessLayer
{
    public class CanBoDAL
    {

        DataAccessHelper dah = new DataAccessHelper();
        public List<CanBo1> DanhSachCanBo;

        //Load cán bộ lên trang CanBo.aspx
        public List<CanBo1> LoadCanBo()
        {
            string sql = "select * from CANBO";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<CanBo1> ds = new List<CanBo1>();
            foreach (DataRow dr in dt.Rows)
            {
                CanBo1 cb = new CanBo1();
                cb.IDCB = int.Parse(dr[0].ToString());
                cb.HoTen = dr[1].ToString();
                cb.AnhMOTA = dr[2].ToString();
                cb.ChucVu = dr[3].ToString();
                cb.BangCap = dr[4].ToString();
                cb.EMail = dr[5].ToString();
                cb.QueQuan = dr[6].ToString();
                cb.NgaySinh = DateTime.Parse(dr[7].ToString());
                cb.SoDT = double.Parse(dr[8].ToString());
                cb.DetailCB = dr[9].ToString();
                ds.Add(cb);
            }
            this.DanhSachCanBo = ds;
            return ds;
        }

        //Lấy ID để hiển thị sang DetailCB.aspx
        public List<CanBo1> LayIDCanBo(string IDCanBo)
        {
            string sql = "select * from CANBO where IDCB='" + IDCanBo + "'";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<CanBo1> ds = new List<CanBo1>();
            foreach (DataRow dr in dt.Rows)
            {
                CanBo1 cb = new CanBo1();
                cb.IDCB = int.Parse(dr[0].ToString());
                cb.HoTen = dr[1].ToString();
                cb.AnhMOTA = dr[2].ToString();
                cb.ChucVu = dr[3].ToString();
                cb.BangCap = dr[4].ToString();
                cb.EMail = dr[5].ToString();
                cb.QueQuan = dr[6].ToString();
                cb.NgaySinh = DateTime.Parse(dr[7].ToString());
                cb.SoDT = double.Parse(dr[8].ToString());
                cb.DetailCB = dr[9].ToString();
                ds.Add(cb);
            }
            this.DanhSachCanBo = ds;
            return ds;
        }

        //Tìm kiếm cán bộ
        public List<CanBo1> TimKiem(string keyword)
        {
            string sql = "select * from CANBO where HOTEN like N'%" + keyword + "%' or CHUCVU like N'%" + keyword + "%' or BANGCAP like N'%" + keyword + "%' or QUEQUAN like N'%" + keyword + "%'";
            dah.KetNoi();
            DataTable dt = dah.LoadDuLieu(sql);
            dah.NgatKetNoi();
            List<CanBo1> ds = new List<CanBo1>();
            foreach (DataRow dr in dt.Rows)
            {
                CanBo1 cb = new CanBo1();
                cb.IDCB = int.Parse(dr[0].ToString());
                cb.HoTen = dr[1].ToString();
                cb.AnhMOTA = dr[2].ToString();
                cb.ChucVu = dr[3].ToString();
                cb.BangCap = dr[4].ToString();
                cb.EMail = dr[5].ToString();
                cb.QueQuan = dr[6].ToString();
                cb.NgaySinh = DateTime.Parse(dr[7].ToString());
                cb.SoDT = double.Parse(dr[8].ToString());
                cb.DetailCB = dr[9].ToString();
                ds.Add(cb);
            }
            this.DanhSachCanBo = ds;
            return ds;
        }

        public void ThemCB(CanBo1 cb)
        {
            string sql = "insert into CANBO values (N'" + cb.HoTen + "','" + cb.AnhMOTA + "',N'" + cb.ChucVu + "',N'" + cb.BangCap + "','" + cb.EMail + "',N'" + cb.QueQuan + "','" + cb.NgaySinh + "', " + cb.SoDT + ", N'" + cb.DetailCB + "')";
            dah.ThucThi(sql);

        }
        public void SuaCB(CanBo1 cb)
        {
            string sql = "update CANBO set HOTEN=N'" + cb.HoTen + "',ANHMOTA='" + cb.AnhMOTA + "', CHUCVU=N'" + cb.ChucVu + "', BANGCAP= N'" + cb.BangCap + "', EMAIL='" + cb.EMail + "', QUEQUAN=N'" + cb.QueQuan + "', NGAYSINH='" + cb.NgaySinh + "', SODT=" + cb.SoDT + ", DETAILCB=N'" + cb.DetailCB + "' where IDCB=" + cb.IDCB + "";
            dah.ThucThi(sql);
        }
        public void XoaCB(int idcb)
        {
            string sql = "delete CANBO where IDCB='" + idcb + "'";
            dah.ThucThi(sql);
        }
    }
}