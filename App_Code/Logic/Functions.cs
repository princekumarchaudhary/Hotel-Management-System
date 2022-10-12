using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

namespace HMS
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand Command;
        private DataTable dt;
        private string Str;
        private SqlDataAdapter DataAdapter;
        
        public int setData(string Query)
        {
            int count;
            if(Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            Command.CommandText = Query;
            count = Command.ExecuteNonQuery();
            Con.Close();
            return count;
        }

        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            DataAdapter = new SqlDataAdapter(Query, Str);
            DataAdapter.Fill(dt);
            return dt;
        }
        public Functions()
        {
            Str = @"server=DESKTOP-3Q3N4ET\SQLEXPRESS01;database=Hotel;trusted_connection=yes";
            Con = new SqlConnection(Str);
            Command = new SqlCommand();
            Command.Connection = Con;
        }
    }
}

