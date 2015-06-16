using IMHU.Domain;
using SQLUtilities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Web.Configuration;

namespace ACEService
{
    public class ACEService : IACEService
    {
        //MSMQ queue;
        [OperationBehavior(TransactionScopeRequired = true)]
        public void SetEncomenda(Encomenda e)
        {
            /*String QueueName = WebConfigurationManager.AppSettings["QueueName"];
            queue = MSMQ.getInstance(QueueName);

            queue.WriteQueue("Encomenda", e);*/
            SQLUtil s = new SQLUtil();
            Hashtable parameters = new Hashtable();
            parameters.Add("@ID_Encomenda", e.ID_Encomenda);
            parameters.Add("@Referencia_Produto", e.Referencia_Produto);
            parameters.Add("@DataEncomenda", e.DataEncomenda);
            parameters.Add("@QuantidadeEncomenda", e.QuantidadeEncomenda);
            parameters.Add("@Estado", "");
            parameters.Add("@ID_UnidadeFuncional", 1);
            
            try
            {
                s.StoreProcedureExecute("EncomendaRecebidaInsert", parameters);
            }
            catch(SqlException ex)
            {
                
            }
        }
    }    
}
