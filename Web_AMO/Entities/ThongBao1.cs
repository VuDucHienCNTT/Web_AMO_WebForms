using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_AMO.Entities
{
    public class ThongBao1
    {
        private int iDTB;
        private string trangThai;
        private DateTime ngayTB;
        private string noiDungTB;
        private string tieuDeTB;

        public string TieuDeTB
        {
            get { return tieuDeTB; }
            set { tieuDeTB = value; }
        }

        public string NoiDungTB
        {
            get { return noiDungTB; }
            set { noiDungTB = value; }
        }

        public DateTime NgayTB
        {
            get { return ngayTB; }
            set { ngayTB = value; }
        }

        public string TrangThai
        {
            get { return trangThai; }
            set { trangThai = value; }
        }

        public int IDTB
        {
            get { return iDTB; }
            set { iDTB = value; }
        }

        public ThongBao1()
        {

        }
        public ThongBao1(int idtb, string tieude, string noidung, DateTime ngaytb, string trangthai)
        {
            this.iDTB = idtb;
            this.tieuDeTB = tieude;
            this.noiDungTB = noidung;
            this.ngayTB = ngaytb;
            this.trangThai = trangthai;
        }
    }
}