using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
namespace Web_AMO.Bussiness
{
    public class ThongBaoBLL
    {
        ThongBaoDAL dal = new ThongBaoDAL();
        public List<ThongBao1> LoadThongBao()
        {
            return dal.LoadThongBao();
        }
        public List<ThongBao1> TBCOHIEULUC()
        {
            return dal.TBCOHIEULUC();
        }
        public void ThemTB(ThongBao1 tb)
        {
            dal.ThemTB(tb);
        }
        public void SuaTB(ThongBao1 tb)
        {
            dal.SuaTB(tb);
        }
        public void XoaTB(int idtb)
        {
            dal.XoaTB(idtb);
        }

    }
}