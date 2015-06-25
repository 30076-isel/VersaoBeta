using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;

namespace IMHU.Domain.Entities.Abstract
{
    [ServiceContract]
    public interface IServicoProduto
    {
        [OperationContract(IsOneWay = true)]
        void PutEncomenda(List<Produto> productos);
    }
}
