using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel;
using System.Text;
using IMHU.Domain.Entities.Abstract;
using SQLUtilities;

namespace IMHU.Domain.Entities.Concret
{
    public class EncomendaARSRepository : ISharedRepositoy<Encomenda_ARS>
    {
        private readonly static SQLUtil sqlutils = new SQLUtil("ARS");


        #region ISharedRepositoy<Encomenda_ARS> Members
        [OperationBehavior(TransactionScopeRequired = true)]
        public bool add(Encomenda_ARS encomenda)
        {
            Hashtable parameters = new Hashtable();
            parameters.Add("@Id_Encomenda", encomenda.Id_Encomenda);
            parameters.Add("@Referencia_Produto", encomenda.Referencia_Produto);
            parameters.Add("@Data_Encomenda", encomenda.Data_Encomenda);
            parameters.Add("@Quantidade", encomenda.Quantidade);
            parameters.Add("@Estado", encomenda.Estado);
            parameters.Add("@ID_Ace", encomenda.ID_Ace);

            try
            {
                sqlutils.StoreProcedureExecute("EncomendaRecebidaInsert", parameters);
                return true;
            }
            catch (SqlException ex)
            {
                return false;
            }
        }

        public Encomenda_ARS remove(int id)
        {
            throw new NotImplementedException();
        }

        public Encomenda_ARS get(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Encomenda_ARS> getAll()
        {
            throw new NotImplementedException();
        }

        #endregion
    }
}
