using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace IMHU.Domain
{
    [DataContract]
    public class Encomenda_USF
    {

        [DataMember]
        public string ID_Encomenda { set; get; }
        [DataMember]
        public int Referencia_Produto { set; get; }
        [DataMember]
        public DateTime DataEncomenda { set; get; }
        [DataMember]
        public int QuantidadeEncomenda { set; get; }
        [DataMember]
        public string Estado { set; get; }
        [DataMember]
        public string Id_Funcionario { set; get; }
    }
}
