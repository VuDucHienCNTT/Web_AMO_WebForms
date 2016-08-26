using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_AMO.Entities
{
    public class TheLoai1
    {
        private string idTheLoaiTin;

        public string IdTheLoaiTin
        {
            get { return idTheLoaiTin; }
            set { idTheLoaiTin = value; }
        }
        private string tenTheLoaiTin;

        public string TenTheLoaiTin
        {
            get { return tenTheLoaiTin; }
            set { tenTheLoaiTin = value; }
        }
        public TheLoai1()
        {

        }
        public TheLoai1(string idtheloaitin , string tentheloaitin)
        {
            this.idTheLoaiTin = idtheloaitin;
            this.tenTheLoaiTin = tentheloaitin;
        }
    }
}