using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel;
using System.Text;
using ConnectAndAccessDataBase;
using IMHU.Domain;
using IMHU.Domain.Entities.Abstract;
using IMHU.Domain.Entities.Concret;

namespace ARSWebService
{
    public class ServicoEncomenda : IServicoEncomenda<Encomenda_ARS>
    {
        private readonly static ISharedRepositoy<Encomenda_ARS> repo= EncomendaARSRepositoryLocator.Get();

        [OperationBehavior(TransactionScopeRequired = true)]
        public void PutEncomenda(Encomenda_ARS encomenda)
        {
            repo.add(encomenda);
        }

        public string TakeStatusEncomenda(string id_ENCOMENDA)
        {
            throw new NotImplementedException();
        }

        public void TakeNovosProductos(List<Producto> list)
        {
            throw new NotImplementedException();
        }

    }
}
