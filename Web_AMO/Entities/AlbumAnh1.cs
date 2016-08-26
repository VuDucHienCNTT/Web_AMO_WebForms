using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_AMO.Entities
{
    public class AlbumAnh1
    {
        private int idAnh;
        private string hinhAnh;
        private string thuoc;
        private DateTime ngayDang;

        public string Thuoc
        {
            get { return thuoc; }
            set { thuoc = value; }
        }

        public DateTime NgayDang
        {
            get { return ngayDang; }
            set { ngayDang = value; }
        }

        public int IdAnh
        {
            get { return idAnh; }
            set { idAnh = value; }
        }
        public string HinhAnh
        {
            get { return hinhAnh; }
            set { hinhAnh = value; }
        }
        public AlbumAnh1()
        {

        }
        public AlbumAnh1(int idanh, string hinhanh, string thuoc, DateTime ngaydang)
        {
            this.idAnh = idanh;
            this.hinhAnh = hinhanh;
            this.thuoc = thuoc;
            this.ngayDang = ngaydang;
        }
    }
}