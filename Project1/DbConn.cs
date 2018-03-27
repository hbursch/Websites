using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Project1
{
    public class DbConn
    {
        public String connStr = "server=cgtweb1.tech.purdue.edu;uid=cgt456web1e;pwd=Fizzling1e874;database=cgt456web1e";
        public SqlDataAdapter dbSDA;
        public DataSet dbDS;
        public SqlDataReader dbDR;
        public SqlConnection dbConnection;
        public SqlCommand dbCmd;

        //Constructor for the class
        public DbConn()
        {
            //nothing in here this time
        }//end constructor

        public System.Data.DataSet createDataSet(String sqlPassedIn)
        {
            dbConnection = new SqlConnection(connStr);
            dbConnection.Open();
            dbCmd = new SqlCommand(sqlPassedIn, dbConnection);
            dbSDA = new SqlDataAdapter();
            dbSDA.SelectCommand = dbCmd;
            dbDS = new DataSet();
            dbSDA.Fill(dbDS);
            return dbDS;
        } //end createDataSet function

        public System.Data.SqlClient.SqlDataReader createDataReader(String sqlPassedIn)
        {
            dbConnection = new SqlConnection(connStr);
            dbConnection.Open();
            dbCmd = new SqlCommand(sqlPassedIn, dbConnection);
            dbDR = dbCmd.ExecuteReader();
            return dbDR;
        } //end createDataReader
    } //end DbConn constructor
}