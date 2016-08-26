using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_AMO.Entities
{
    public class LichLamViec1
    {
        private int iDLichLV;
        private string tieuDe;
        private string linK;
        private string trangThai;
        private DateTime ngayDang;
        private string nhacLich;
        private int luotXem;


        public string NhacLich
        {
            get { return nhacLich; }
            set { nhacLich = value; }
        }

        public int LuotXem
        {
            get { return luotXem; }
            set { luotXem = value; }
        }

        public DateTime NgayDang
        {
            get { return ngayDang; }
            set { ngayDang = value; }
        }

        public string TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }

        public string LinK
        {
            get { return linK; }
            set { linK = value; }
        }


        public string TieuDe
        {
            get { return tieuDe; }
            set { tieuDe = value; }
        }

        public int IDLichLV
        {
            get { return iDLichLV; }
            set { iDLichLV = value; }
        }

        public LichLamViec1()
        {

        }
        public LichLamViec1(int idlichlv, string tieude, string link, string trangthai, DateTime ngaydang, int luotxem)
        {
            this.iDLichLV = idlichlv;
            this.tieuDe = tieude;
            this.linK = link;
            this.trangThai = trangthai;
            this.ngayDang = ngaydang;
            this.luotXem = luotxem;
        }

    }
}