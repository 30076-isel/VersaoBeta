using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace IMHU.Domain
{
    public class Encomenda_ARS
    {
        string id_Encomenda;
	    int referencia_Produto;
        int quantidade;
	    DateTime Data_Encomenda;
	    DateTime DataDeValidadeProduto; //Acrescentei como sugestão - Fixar a data quando a encomenda for satisfeita
	    string estado; //Acrescentei como sugestão
	    string id_Fornecedor;
	    string id_Funcionario;
    }
}
