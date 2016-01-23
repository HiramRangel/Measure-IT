using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace MeasureIT
{
    public partial class clients : System.Web.UI.Page
    {
        string db = ConfigurationManager.ConnectionStrings["erpDev"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "INSERT INTO client_catalog_tbl(client_id, client_name, client_address1, client_address2) VALUES('" + _txtCustomerID.Text + "','" + _txtCompany.Text + "','" + _txtAddress1.Text + "','" + _txtAddress2.Text + "')";
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();                    
                    conn.Close();
                }
            }
        }
    }
}