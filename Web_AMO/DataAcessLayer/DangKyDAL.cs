using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;

namespace Web_AMO.DataAcessLayer
{ 
    public class DangKyDAL
    {
        DataAccessHelper dah = new DataAccessHelper();
        public DataTable LoadDuLieu()
        {
            string sql = "select * from DANGKY order by IDTAIKHOAN desc";
            return dah.LoadDuLieu(sql);
        }
        public void ThemTaiKhoan(DangKy1 dk)
        {
            string sql = "insert into DANGKY values (N'"+dk.Quyen+"','" + dk.TenDN + "','" + dk.Pass + "','" + dk.Repass + "','" + dk.Email + "',N'" + dk.GioiTinh + "','" + dk.NgaySinh + "',N'" + dk.DiaChi + "'," + dk.SDT + ")";
            dah.ThucThi(sql);
        }
        public void SuaTaiKhoan(DangKy1 dk)
        {
            string sql = "update DANGKY set QUYEN=N'" + dk.Quyen + "', TENDANGNHAP='" + dk.TenDN + "', PASSWORD='" + dk.Pass + "', REPASSWORD='" + dk.Repass + "', EMAIL='" + dk.Email + "', GIOITINH=N'" + dk.GioiTinh + "', NGAYSINH='" + dk.NgaySinh + "', DIACHI=N'" + dk.DiaChi + "', SODIENTHOAI=" + dk.SDT + " where IDTAIKHOAN=" + dk.IDTaiKhoan + "";
            dah.ThucThi(sql);
        }
        public void XoaTaiKhoan(int idtaikhoan)
        {
            string sql = "delete DANGKY where IDTAIKHOAN='" + idtaikhoan + "'";
            dah.ThucThi(sql);
        }
        public bool KiemTra(string tendangnhap, string matkhau)
        {
            string sql = "select count(*) from DANGKY where TENDANGNHAP='" + tendangnhap + "' and PASSWORD='" + matkhau + "'";
            return dah.KiemTraMaTrung(sql);
        }
        public DataTable LayID(int idtaikhoan)
        {
            string sql = "select * from DANGKY where IDTAIKHOAN=" + idtaikhoan + "";
            return dah.LoadDuLieu(sql);
        }

        //Kiểm tra quyền admin để vào trang quản trị
        //public bool KiemTraQuyenAdmin(string tendn, string matkhau)
        //{
        //    string sql = "select count(*) from TINTUC where TENDANGNHAP='" + tendn + "' and PASSWORD='" + matkhau + "' and QUYEN='Admin'";
        //    return dah.KiemTraMaTrung(sql);
        //}
    }
}