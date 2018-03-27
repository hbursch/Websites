using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Project01_456
{
    public partial class results : System.Web.UI.Page
    {
        //strings to use when connecting to the database
        private string SQL;
        private string connection = "server=cgtweb1.tech.purdue.edu;uid=cgt456web1t;pwd=Fizzling1t317;database=cgt456web1t";
        private SqlConnection oConn;
        private SqlCommand oCmd;
        private SqlDataReader sqlreader;
        protected void Page_Load(object sender, EventArgs e)
        {
            oConn = new SqlConnection(connection);
            //SQL statement
            SQL = "SELECT * FROM Project1a";
            oCmd = new SqlCommand(SQL, oConn);
            //open connection
            oConn.Open();

            //read the SQL
            sqlreader = oCmd.ExecuteReader();
            Project1a.DataSource = sqlreader;
            Project1a.DataBind();
            //close the connection
            oConn.Close();
        }
    }
}