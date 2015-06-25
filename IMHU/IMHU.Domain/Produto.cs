using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;

namespace IMHU.Domain
{
    [DataContract]
    public class Produto
    {
       [DataMember] 
       public int Referencia { set; get; }
       [DataMember]
       public string NomeProduto { set; get; }
    }
}
