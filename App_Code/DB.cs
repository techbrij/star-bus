/*
        Created By: Brij Mohan Dammani
 *      Object: Act as Data Access Layer for this project.
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;

/// <summary>
/// Summary description for DB
/// </summary>
public static class DB
{
	public static string ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.AppDomain.CurrentDomain.BaseDirectory + "db\\starbus.mdb;";

    public static object  ExecuteScaler(string qry)
    {
        object ret =null;
        using (OleDbConnection con = new OleDbConnection(ConnectionString))
        {
            OleDbCommand cmd = new OleDbCommand(qry, con);
            con.Open(); 
            ret = (cmd.ExecuteScalar());
            con.Close(); 
        }
        return ret;
    }

    public static int ExecuteNonQuery(string qry)
    {
        int ret = 0;
        using (OleDbConnection con = new OleDbConnection(ConnectionString))
        {
            OleDbCommand cmd = new OleDbCommand(qry, con);
            con.Open();
            ret = Convert.ToInt32(cmd.ExecuteNonQuery());
            con.Close();
        }
        return ret;
    
    }
}
