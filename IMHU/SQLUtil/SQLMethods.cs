using SQLUtilities;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace SQLUtilMethods
{
    class SQLMethods
    {
        /*public SQLDataUtil GetPersons(DateTime timeStamp)
        {
            SQLUtil sql = new SQLUtil();
            Hashtable lista = new Hashtable();

            lista.Add("currentTime", timeStamp);

            return sql.StoreProcedureExecute("ObterPessoas", lista);
        }

        public SQLDataUtil GetAllPersons()
        {
            SQLUtil sql = new SQLUtil();
            Hashtable lista = new Hashtable();

            lista.Add("@currentTime", SqlDateTime.MinValue);

            return sql.StoreProcedureExecute("ObterPessoas", lista);
        }


        public SQLDataUtil InsertPerson(String NIB, String nome, String sexo)
        {
            SQLUtil sql = new SQLUtil();
            Hashtable lista = new Hashtable();

            lista.Add("@NIB", NIB);
            lista.Add("@nome", nome);
            lista.Add("@sexo", sexo);
            return sql.StoreProcedureExecute("InserirPessoa", lista);
        }

        public SQLDataUtil UpdatePerson(String NIB, String nome, String sexo)
        {
            SQLUtil sql = new SQLUtil();
            Hashtable lista = new Hashtable();

            lista.Add("@NIB", NIB);
            lista.Add("nome", nome);
            lista.Add("@sexo", sexo);

            return sql.StoreProcedureExecute("ActualizarPessoa", lista);
        }

        public SQLDataUtil RemovePerson(String NIB)
        {
            SQLUtil sql = new SQLUtil();
            Hashtable lista = new Hashtable();

            lista.Add("@NIB", NIB);
            return sql.StoreProcedureExecute("RemoverPessoa", lista);
        }*/
    }
}
