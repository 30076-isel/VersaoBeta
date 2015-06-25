using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace IMHU.Domain
{
    [DataContract]
    public class Encomenda_ARS
    {
        [DataMember]
        public string Id_Encomenda { set; get; }
        [DataMember]
        public int Referencia_Produto { set; get; }
        [DataMember]
        public int Quantidade { set; get; }
        [DataMember]
        public DateTime Data_Encomenda { set; get; }
        [DataMember]
        public DateTime DataDeValidadeProduto { set; get; } //Acrescentei como sugestão - Fixar a data quando a encomenda for satisfeita
        [DataMember]
        public string Estado { set; get; } //Acrescentei como sugestão
        [DataMember]
        public string Id_Fornecedor { set; get; }
        [DataMember]
        public string Id_Funcionario { set; get; }
        [DataMember]
        public string ID_Ace { set; get; }
    }
}
