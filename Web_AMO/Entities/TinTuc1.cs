using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_AMO.Entities
{
    public class TinTuc1
    {
        private int iDTinTuc;
        private string iDTheLoaiTin;
        private string tieuDe;
        private string tomTat;
        private string noiDung;
        private string anhDaiDien;
        private DateTime ngayDang;
        private string tacGia;
        private string nguoiDang;
        private int luotXem;


        public int IDTinTuc
        {
            get { return iDTinTuc; }
            set { iDTinTuc = value; }
        }
        public string TieuDe
        {
            get { return tieuDe; }
            set { tieuDe = value; }
        }
        public string TomTat
        {
            get { return tomTat; }
            set { tomTat = value; }
        }
        public string NoiDung
        {
            get { return noiDung; }
            set { noiDung = value; }
        }

        public string AnhDaiDien
        {
            get { return anhDaiDien; }
            set { anhDaiDien = value; }
        }
        public DateTime NgayDang
        {
            get { return ngayDang; }
            set { ngayDang = value; }
        }
        public string IDTheLoaiTin
        {
            get { return iDTheLoaiTin; }
            set { iDTheLoaiTin = value; }
        }
        public string TacGia
        {
            get { return tacGia; }
            set { tacGia = value; }
        }

        public string NguoiDang
        {
            get { return nguoiDang; }
            set { nguoiDang = value; }
        }
        public int LuotXem
        {
            get { return luotXem; }
            set { luotXem = value; }
        }


        public TinTuc1()
        {
        }
        public TinTuc1(int idtintuc, string idtheloaitin, string tieude, string tomtat, string noidung, string anhdaidien, DateTime ngaydang, string tacgia, string nguoidang, int luotxem)
        {
            this.iDTinTuc = idtintuc;
            this.iDTheLoaiTin = idtheloaitin;
            this.tieuDe = tieude;
            this.tomTat = tomtat;
            this.noiDung = noidung;
            this.anhDaiDien = anhdaidien;
            this.ngayDang = ngaydang;
            this.tacGia = tacgia;
            this.nguoiDang = nguoidang;
            this.luotXem = luotxem;
        }
    }
}