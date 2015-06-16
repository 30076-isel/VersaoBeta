using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace SQLUtilities
{
    public class SQLUtil
    {
        private string conexao = ConfigurationManager.ConnectionStrings["db1"].ConnectionString;

        public SQLDataUtil StoreProcedureExecute(String storedp, Hashtable parameters) 
        {

            SQLDataUtil sqldataUtil = new SQLDataUtil();

            DataSet ds;
            SqlDataAdapter adapter;
            SqlConnection conn = new SqlConnection(conexao);
            SqlCommand comando = new SqlCommand();
            comando.CommandType = System.Data.CommandType.StoredProcedure;
            comando.CommandText = storedp;
            comando.Connection = conn;

            if (parameters != null)
                foreach (DictionaryEntry de in parameters)
                    comando.Parameters.AddWithValue((string)de.Key, de.Value);
            
            ds = new DataSet();
            adapter = new SqlDataAdapter(comando);
            conn.Open();
            sqldataUtil.Error = "";

            adapter.Fill(ds);

            conn.Close();
            conn.Dispose();
            comando.Dispose();
            
            sqldataUtil.Data = ds;
            sqldataUtil.Lines = ds.Tables[0].Rows.Count;

            return sqldataUtil;
        }
    }

    public class SQLDataUtil
    {
        public DataSet Data
        {
            set
            {
                _data = value;
            }
            get
            {
                return _data;
            }
        }

        public String Error
        {
            set
            {
                _error = value;
            }
            get
            {
                return _error;
            }
        }

        public Int32 Lines
        {
            set
            {
                _lines = value;
            }
            get
            {
                return _lines;
            }
        }

        private DataSet _data;
        private Int32 _lines;
        private String _error;
    }
}