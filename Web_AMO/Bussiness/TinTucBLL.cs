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
    public class TinTucBLL
    {
        TinTucDAL dal = new TinTucDAL();
        public List<TinTuc1> LoadTinTuc()
        {
            return dal.LoadTinTuc();
        }
        public void ThemTinTuc(TinTuc1 tt)
        {
            dal.ThemTinTuc(tt);
        }

        public void SuaTinTuc(TinTuc1 tt)
        {
            dal.SuaTinTuc(tt);
        }
        public void XoaTinTuc(int idTinTuc)
        {
            dal.XoaTinTuc(idTinTuc);

        }

        public void UpdateLuotXem(int idTinTuc)
        {
            dal.UpdateLuotXem(idTinTuc);
        }

        //public int TongSoBangTin()
        //{
        //    int tongsobt = 0;
        //    DataTable dt = new DataTable();
        //    dt = dal.LoadDuLieu();
        //    tongsobt = dt.Rows.Count;
        //    return tongsobt;
        //}
        public List<TinTuc1> LayTinMoi()
        {
            return dal.LayTinMoi();
        }
        public List<TinTuc1> TinDocNhieuNhat()
        {
            return dal.TinDocNhieuNhat();
        }
        //Lấy ID Tin Tuc hiển thị sang trang DetailTinTuc.aspx
        public List<TinTuc1> LayIDTinTuc(int IDTinTuc)
        {
            return dal.LayIDTinTuc(IDTinTuc);
        }

        //Lấy ID Thể Loại Tin hiển thị tất cả tin trong thể loại sang trang TLTin.aspx
        public List<TinTuc1> LayIDTLTin(string IDTLTin)
        {
            return dal.LayIDTLTin(IDTLTin);
        }

        //Lấy thể loại tin 1
        public List<TinTuc1> TheLoaiTinThu1()
        {
            return dal.TheLoaiTinThu1();
        }

        //Lấy thể loại tin 2
        public List<TinTuc1> TheLoaiTinThu2()
        {
            return dal.TheLoaiTinThu2();
        }

        //Lấy thể loại tin 3
        public List<TinTuc1> TheLoaiTinThu3()
        {
            return dal.TheLoaiTinThu3();
        }

        public List<TinTuc1> TimKiem(string keyword)
        {
            return dal.TimKiem(keyword);
        }
        public bool KiemTra(int idtintuc)
        {
            return dal.KiemTra(idtintuc);
        }
    }
}