using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_AMO.Entities
{
    public class DangKy1
    {
        private int iDTaiKhoan;
        private string quyen;
        private string tenDN;
        private string pass;
        private string repass;
        private string email;
        private string gioiTinh;
        private string ngaySinh;
        private string diaChi;
        private double sDT;

        public int IDTaiKhoan
        {
            get { return iDTaiKhoan; }
            set
            {
                if (value >= 1)
                    iDTaiKhoan = value;
            }
        }

        public string Quyen
        {
            get { return quyen; }
            set
            {
                if (value != "")
                    quyen = value;
            }
        }

        public string TenDN
        {
            get { return tenDN; }
            set
            {
                if (value != "")
                    tenDN = value;
            }
        }


        public string Pass
        {
            get { return pass; }
            set { pass = value; }
        }

        public string Repass
        {
            get { return repass; }
            set { repass = value; }
        }


        public string Email
        {
            get { return email; }
            set { email = value; }
        }


        public string GioiTinh
        {
            get { return gioiTinh; }
            set { gioiTinh = value; }
        }


        public string NgaySinh
        {
            get { return ngaySinh; }
            set { ngaySinh = value; }
        }


        public string DiaChi
        {
            get { return diaChi; }
            set { diaChi = value; }
        }


        public double SDT
        {
            get { return sDT; }
            set { sDT = value; }
        }

        //không tham số
        public DangKy1()
        {
        }

        //có tham số
        public DangKy1(int idtaikhoan, string quyen, string tendn, string password, string repassword, string email, string gioitinh, string ngaysinh, string diachi, double sdt)
        {
            this.iDTaiKhoan = idtaikhoan;
            this.quyen = quyen;
            this.tenDN = tendn;
            this.pass = password;
            this.repass = repassword;
            this.email = email;
            this.gioiTinh = gioitinh;
            this.ngaySinh = ngaysinh;
            this.diaChi = diachi;
            this.sDT = sdt;
        }
    }
}