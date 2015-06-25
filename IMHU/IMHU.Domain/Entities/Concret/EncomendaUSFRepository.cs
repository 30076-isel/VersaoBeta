using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IMHU.Domain.Entities.Abstract;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.ServiceModel;
using System.Collections;
using SQLUtilities;

namespace IMHU.Domain.Entities.Concret
{
    /// <summary>
    /// Class que implementa o ISharedRepositoy<T>.
    /// Serve para fazer o CRUD na Base de dados
    /// </summary>
    public class EncomendaUSFRepository : ISharedRepositoy<Encomenda_USF>
    {
        private readonly static SQLUtil sqlutils= new SQLUtil("USF");

        #region ISharedRepositoy<Encomenda_USF> Members

        /// <summary>
        /// Método que adiciona/envia uma encomenda. 
        /// </summary>
        /// <param name="encomenda"></param>
        /// <returns>Retorna True se adicionar com sucesso e False, caso contrário</returns>
        [OperationBehavior(TransactionScopeRequired = true)]
        public bool add(Encomenda_USF encomenda)
        {
            Hashtable parameters = new Hashtable();
            parameters.Add("@ID_Encomenda", encomenda.ID_Encomenda);
            parameters.Add("@Referencia_Produto", encomenda.Referencia_Produto);
            parameters.Add("@DataEncomenda", encomenda.DataEncomenda);
            
            
            parameters.Add("@QuantidadeEncomenda", encomenda.QuantidadeEncomenda);
            //TO DO
            parameters.Add("@Estado", "INI");
            parameters.Add("@ID_Funcionario", "USF00001");

            //try
            //{
                sqlutils.StoreProcedureExecute("usf.EncomendaInsert", parameters);
                return true;
            /*}
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                return false;
            }*/
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
