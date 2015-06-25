using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IMHU.Domain.Entities.Abstract;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Configuration;

namespace IMHU.Domain.Entities.Concret
{
    public class EncomendaUsfRepository : ISharedRepositoy<Encomenda_USF>
    {

        #region ISharedRepositoy<Encomenda_USF> Members

        public bool add(Encomenda_USF enc)
        {
            string querySql = string.Format("INSERT INTO *FROM [Encomenda_Usf] VALUES ({0},{1},{2},{3},{4},{5},{6},{7})",
                enc.id_Encomenda);
            ConnectionStringSettings mySetting = ConfigurationManager.ConnectionStrings["IMHU_ARS"];
            SqlDataReader results = null;

            using (SqlConnection connection = new SqlConnection(mySetting.ConnectionString))
            {
                SqlCommand command = new SqlCommand(querySql, connection);
                try
                {
                    connection.Open();
                    results = command.ExecuteReader();
                    if (results != null && results.HasRows)
                    {
                        return true;
                    }

                }
                catch(Exception e)
                {
                }
            }
            return false;
        }

        public Encomenda_USF remove(int id)
        {
            throw new NotImplementedException();
        }

        public Encomenda_USF get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Encomenda_USF> getAll()
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
