using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

namespace BigDataCodigo
{
    public partial class MostrarDatos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection("Data Source=SEGUNDO150;Initial Catalog=DAM_GorkaUrtxuegia_DEV;Integrated Security=True"))
            {
                string sqlquery = "select top 100 * from dbo.BigData";
                SqlCommand sqlcomm = new SqlCommand(sqlquery, con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
                DataSet ds = new DataSet("BigData");
                GridView gv = new GridView();
                sda.Fill(ds);
                con.Close();
            }
        }

        protected void gvDatos_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}