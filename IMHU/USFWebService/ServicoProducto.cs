using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using ConnectAndAccessDataBase;
using IMHU.Domain;
using IMHU.Domain.Entities.Abstract;

namespace USFWebService
{
    public class ServicoProducto : IServicoProducto
    {

        private readonly static SQLUtil sqlutils = new SQLUtil();

        [System.ServiceModel.OperationBehavior(TransactionScopeRequired = true)]
        public void PutEncomenda(List<Producto> productos)
        {
            Hashtable parameters;

            foreach (Producto item in productos)
            {
                parameters = new Hashtable();
                parameters.Add("@Referencia", item.Referencia);
                parameters.Add("@NomeProduto", item.NomeProduto);

                try
                {
                    sqlutils.StoreProcedureExecute("EncomendaRecebidaInsert", parameters);

                }
                catch (SqlException ex)
                {
                    throw ex;
                }
            }
        }
    }
}
