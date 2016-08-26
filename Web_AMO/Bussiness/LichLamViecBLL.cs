using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using System.Text;
namespace Web_AMO.Bussiness
{
    public class LichLamViecBLL
    {
        LichLamViecDAL llvdal = new LichLamViecDAL();
        public List<LichLamViec1> LoadLichLV()
        {
            return llvdal.LoadLichLV();
        }

        public List<LichLamViec1> LayIDLichLV(string IDLichLV)
        {
            return llvdal.LayIDLichLV(IDLichLV);
        }
        public List<LichLamViec1> TimKiem(string keyword)
        {
            return llvdal.TimKiem(keyword);
        }

        public void UpdateLuotXem(int idLich)
        {
            llvdal.UpdateLuotXem(idLich);
        }

        public void ThemLichLV(LichLamViec1 llv)
        {
            llvdal.ThemLichLV(llv);
        }
        public void SuaLichLV(LichLamViec1 llv)
        {
            llvdal.SuaLichLV(llv);
        }
        public void XoaLichLV(int idlichlv)
        {
            llvdal.XoaLichLV(idlichlv);
        }

    }
}