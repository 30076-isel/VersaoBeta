using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;

namespace IMHU.Domain.Entities.Abstract
{
    [ServiceContract]
    public interface IServicoEncomenda
    {
        [OperationContract(IsOneWay = true)]
        void PutEncomenda(Encomenda_ACE enc);
    }
}
