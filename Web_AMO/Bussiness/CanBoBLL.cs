using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using Web_AMO.Entities;
using Web_AMO.DataAcessLayer;
using System.Text;
namespace Web_AMO.Bussiness
{
    public class CanBoBLL
    {
        CanBoDAL cbdal = new CanBoDAL();

        public List<CanBo1> LoadCanBo()
        {
            return cbdal.LoadCanBo();
        }
        public List<CanBo1> TimKiem(string keyword)
        {
            return cbdal.TimKiem(keyword);
        }
        public List<CanBo1> LayIDCanBo(string IDCanBo)
        {
            return cbdal.LayIDCanBo(IDCanBo);
        }
        public void ThemCB(CanBo1 cb)
        {
            cbdal.ThemCB(cb);
        }
        public void SuaCB(CanBo1 cb)
        {
            cbdal.SuaCB(cb);
        }
        public void XoaCB(int idcb)
        {
            cbdal.XoaCB(idcb);
        }

    }
}