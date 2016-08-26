using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_AMO.Entities
{
    public class TaiLieu1
    {
        private int iDFile;
        private string tenfile;
        private DateTime ngaydang;
        private string link;

        public string Link
        {
            get { return link; }
            set { link = value; }
        }
        public string TenFile
        {
            get { return tenfile; }
            set { tenfile = value; }
        }
        public int IDFile
        {
            get { return iDFile; }
            set { iDFile = value; }
        }
        public DateTime Ngaydang
        {
            get { return ngaydang; }
            set { ngaydang = value; }
        }
        public TaiLieu1()
        {

        }
        public TaiLieu1(int idfile, string tenfile, DateTime ngaydang, string link)
        {
            this.iDFile = idfile;
            this.tenfile = tenfile;
            this.ngaydang = ngaydang;
            this.link = link;
        }
    }
}