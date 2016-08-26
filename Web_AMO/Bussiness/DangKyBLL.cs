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
    public class DangKyBLL
    {
        DangKyDAL dal = new DangKyDAL();
        public DataTable LoadDuLieu()
        {
            DataTable dt = new DataTable();
            dt = dal.LoadDuLieu();
            return dt;
        }
        //public int TongSoTaiKhoan()
        //{
        //    int tongsotk = 0;
        //    DataTable dt = new DataTable();
        //    dt = dal.LoadDuLieu();
        //    tongsotk = dt.Rows.Count;
        //    return tongsotk;
        //}
        public void ThemTaiKhoan(DangKy1 dk)
        {
            dal.ThemTaiKhoan(dk);
        }

        public void SuaTaiKhoan(DangKy1 dk)
        {
            dal.SuaTaiKhoan(dk);
        }
        public void XoaTaiKhoan(int idtaikhoan)
        {
            dal.XoaTaiKhoan(idtaikhoan);
        }

        public bool KiemTra(string tentaikhoan, string matkhau)
        {
            return dal.KiemTra(tentaikhoan, matkhau);
        }
        public DataTable LayID(int idtaikhoan)
        {
            return dal.LayID(idtaikhoan);
        }

        // Kiểm tra quyền Admin để đăng nhập vào trang Quản trị
        //public bool KiemTraQuyenAdmin(string tendn, string matkhau)
        //{
        //    return dal.KiemTraQuyenAdmin(tendn, matkhau);
        //}
    }
}