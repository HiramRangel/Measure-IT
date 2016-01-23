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
    public partial class Recibos : System.Web.UI.Page
    {
        string db = ConfigurationManager.ConnectionStrings["erpDev"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _txtpart_TextChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT wh_description, MAX(wh_measureunit) AS Measure, MAX(wh_arrivaldate) AS Latest FROM material_tbl WHERE wh_partnumber='" + _txtpart.Text + "' GROUP BY wh_description";
                    cmd.Connection = conn;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        _txtDescription.Text = dr["wh_description"].ToString();
                        _txtMeasure.Text = dr["Measure"].ToString();
                    }

                    conn.Close();
                }
            }
            
        }

        protected void _btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "INSERT INTO material_tbl(wh_partnumber, wh_description, wh_measureunit, wh_qty, wh_palletid, wh_arrivaldate) Values('" + _txtpart.Text + "','" + _txtDescription.Text + "','" + _txtMeasure.Text + "'," + _txtqty.Text + ",'" + _txtpallet.Text + "','" + DateTime.Now + "')";
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }
    }
}