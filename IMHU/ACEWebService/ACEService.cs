using IMHU.Domain;
using IMHU.Domain.Entities.Abstract;
using IMHU.Domain.Entities.Concret;
using SQLUtilities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Web.Configuration;

namespace ACEWebService
{
    public class ACEService : IServicoEncomenda
    {
        private readonly static ISharedRepositoy<Encomenda_ACE> repo = EncomendaACERepositoryLocator.Get();

        public void PutEncomenda(Encomenda_ACE enc)
        {
            /*SQLUtil sqlutils = new SQLUtil("ACE");

            enc.ID_Encomenda = "USF_12";
            enc.DataEncomenda = DateTime.Now;
            enc.Estado = "INI";
            enc.QuantidadeEncomenda = 20;
            enc.Referencia_Produto = 210300003;

            Hashtable parameters = new Hashtable();
            parameters.Add("@ID_Encomenda", enc.ID_Encomenda);
            parameters.Add("@Referencia_Produto", enc.Referencia_Produto);
            parameters.Add("@DataEncomenda", enc.DataEncomenda);
            parameters.Add("@QuantidadeEncomenda", enc.QuantidadeEncomenda);
            parameters.Add("@Estado", enc.Estado);
            //TO DO
            parameters.Add("@ID_UnidadeFuncional", "USF_ACEXII_1");

            sqlutils.StoreProcedureExecute("ace.EncomendaRecebidaInsert", parameters);*/

            repo.add(enc);
        }
    }    
}
