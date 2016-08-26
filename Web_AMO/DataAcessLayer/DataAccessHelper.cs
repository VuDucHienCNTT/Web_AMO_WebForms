using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Web_AMO.DataAcessLayer
{
    public class DataAccessHelper
    {
        static string ketnoi = ConfigurationManager.ConnectionStrings["Web_AMOConnectionString"].ConnectionString;//lay tu web.config
        public static SqlConnection sqlcon = new SqlConnection(ketnoi);
        public static SqlCommand sqlCom;
        public static SqlDataAdapter sqlAdap;
        public static DataTable dt;
        public void KetNoi()
        {
            if (sqlcon.State == ConnectionState.Closed)
            {
                sqlcon.Open();
            }
        }
        public void NgatKetNoi()
        {
            if (sqlcon.State == ConnectionState.Open)
            {
                sqlcon.Close();
            }
        }
        public bool KiemTraMaTrung(string sql)
        {
            KetNoi();
            bool kt = false;
            int sobanghi = 0;
            sqlCom = new SqlCommand(sql, sqlcon);
            sobanghi = (int)sqlCom.ExecuteScalar();
            if (sobanghi > 0)
            {
                kt = true;
            }
            NgatKetNoi();
            return kt;
        }
        public int Lay1GiaTri(string sql)
        {
            KetNoi();
            SqlCommand sqlCom = new SqlCommand(sql, sqlcon);
            int so = (int)sqlCom.ExecuteScalar();//pthuc lay gtri duy nhat
            NgatKetNoi();
            return so;
        }
        public void ThucThi(string sql)
        {
            KetNoi();
            sqlCom = new SqlCommand(sql, sqlcon);
            sqlCom.ExecuteNonQuery();
            NgatKetNoi();
        }
        public DataTable LoadDuLieu(string sql)
        {

            sqlAdap = new SqlDataAdapter(sql, ketnoi);
            dt = new DataTable();
            sqlAdap.Fill(dt);
            return dt;
        }
        //public int TongSoBanGhi(string sql)
        //{
        //    int tongbanghi = 0;
        //    sqlAdap = new SqlDataAdapter(sql, ketnoi);
        //    dt = new DataTable();
        //    sqlAdap.Fill(dt);
        //    tongbanghi = dt.Rows.Count;
        //    return tongbanghi;
        //}
    }
}