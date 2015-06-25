using SQLUtilities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel;
using System.Text;
using IMHU.Domain.Entities.Abstract;
using System.Data;


namespace IMHU.Domain.Entities.Concret
{
    public class EncomendaACERepository : ISharedRepositoy<Encomenda_ACE>
    {
        private readonly static SQLUtil sqlutils = new SQLUtil("ACE");
        #region ISharedRepositoy<Encomenda_ACE> Members

        //[OperationBehavior(TransactionScopeRequired = true)]
        public bool add(Encomenda_ACE encomenda)
        {
            Hashtable parameters = new Hashtable();
            parameters.Add("@ID_Encomenda", encomenda.ID_Encomenda);
            parameters.Add("@Referencia_Produto", encomenda.Referencia_Produto);
            parameters.Add("@DataEncomenda", encomenda.DataEncomenda);
            parameters.Add("@QuantidadeEncomenda", encomenda.QuantidadeEncomenda);
            parameters.Add("@Estado", encomenda.Estado);
            //TO DO
            parameters.Add("@ID_UnidadeFuncional", "USF_ACEXII_1");

            //try
            //{
                sqlutils.StoreProcedureExecute("ace.EncomendaRecebidaInsert", parameters);
                return true;
            /*}
            catch (SqlException ex)
            {
                return false;
            }*/
        }

        public Encomenda_ACE remove(int id)
        {
            throw new NotImplementedException();
        }

        public Encomenda_ACE get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Encomenda_ACE> getAll()
        {
            SQLUtilities.SQLDataUtil data = sqlutils.StoreProcedureExecute("ace.EncomendaRecebidaGetAll", new Hashtable());

            return DataSetToIEnumerable(data.Data);
        }

        private IEnumerable<Encomenda_ACE> DataSetToIEnumerable(DataSet ds)
        {
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                yield return new Encomenda_ACE
                {
                    ID_Encomenda = Convert.ToString(row["ID_Encomenda"]),
                    Referencia_Produto = Convert.ToInt32(row["Referencia_Produto"]),
                    QuantidadeEncomenda = Convert.ToInt32(row["QuantidadeEncomenda"]),
                    DataEncomenda = Convert.ToDateTime(row["DataEncomenda"])
                };
            }
        }

        #endregion
    }
}


