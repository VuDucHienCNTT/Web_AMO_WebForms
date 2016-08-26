using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Web_AMO.Entities
{
    public class CanBo1
    {
        private int iDCB;
        private string hoTen;
        private string anhMOTA;
        private string chucVu;
        private string bangCap;
        private string eMail;
        private string queQuan;
        private DateTime ngaySinh;
        private double soDT;
        private string detailCB;

        public string DetailCB
        {
            get { return detailCB; }
            set { detailCB = value; }
        }

        public double SoDT
        {
            get { return soDT; }
            set { soDT = value; }
        }

        public int IDCB
        {
            get { return iDCB; }
            set { iDCB = value; }
        }
        

        public string HoTen
        {
            get { return hoTen; }
            set { hoTen = value; }
        }
        

        public string AnhMOTA
        {
            get { return anhMOTA; }
            set { anhMOTA = value; }
        }
        
        public string ChucVu
        {
            get { return chucVu; }
            set { chucVu = value; }
        }
        public string BangCap
        {
            get { return bangCap; }
            set { bangCap = value; }
        }
        public string EMail
        {
            get { return eMail; }
            set { eMail = value; }
        }
        
        public string QueQuan
        {
            get { return queQuan; }
            set { queQuan = value; }
        }

        public DateTime NgaySinh
        {
            get { return ngaySinh; }
            set { ngaySinh = value; }
        }
        public CanBo1()
        {

        }
        public CanBo1(int idcb, string hoten, string anhmota, string chucvu,string bangcap, string email, string quequan, DateTime ngaysinh, double sodt, string detailcb)
        {
            this.iDCB = idcb;
            this.hoTen = hoten;
            this.anhMOTA = anhmota;
            this.chucVu = chucvu;
            this.bangCap = bangcap;
            this.eMail = email;
            this.queQuan = quequan;
            this.soDT = sodt;
            this.ngaySinh = ngaysinh;
            this.detailCB = detailcb;
        }
    }
}