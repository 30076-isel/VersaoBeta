using IMHU.Domain;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace ACEService
{
    [ServiceContract]
    public interface IACEService
    {

        [OperationContract(IsOneWay = true)]
        [TransactionFlow(TransactionFlowOption.Allowed)]
        void SetEncomenda(Encomenda e);

    }
}
