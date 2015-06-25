using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace IMHU.Domain
{
    [DataContract]
    public class Encomenda : BaseClasse
    {
        [DataMember]
        public String ID_Encomenda {get;set;}

        [DataMember]
        public int Referencia_Produto { get; set; }

        [DataMember]
        public DateTime DataEncomenda { get; set; }

        [DataMember]
        public int QuantidadeEncomenda { get; set; }

        [DataMember]
        public String ID_UnidadeFuncional { get; set; }
    }
}
