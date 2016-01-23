using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace MeasureIT
{
    public partial class InitialInventory : System.Web.UI.Page
    {
        string db = ConfigurationManager.ConnectionStrings["erpDev"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _btnSubmitFile_Click(object sender, EventArgs e)
        {
            string csvPath = Server.MapPath("~/csv/") + Path.GetFileName(File_upload.PostedFile.FileName);
            File_upload.SaveAs(csvPath);

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[8] {new DataColumn("id", typeof(int)),
            new DataColumn("partnumber", typeof(string)),
            new DataColumn("description", typeof(string)),
            new DataColumn("qty",typeof(string)),
            new DataColumn("location",typeof(string)),
            new DataColumn("palletid",typeof(string)),
            new DataColumn("measureunit",typeof(string)),
            new DataColumn("arrivaldate",typeof(string)),

            });


            string csvData = File.ReadAllText(csvPath);
            foreach (string row in csvData.Split('\n'))
            {
                if (!string.IsNullOrEmpty(row))
                {
                    dt.Rows.Add();
                    int i = 0;
                    foreach (string cell in row.Split(','))
                    {
                        dt.Rows[dt.Rows.Count - 1][i] = cell;
                        i++;
                    }
                }
            }


            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(conn))
                {
                    //Set the database table name
                    sqlBulkCopy.DestinationTableName = "dbo.material_tbl";
                    conn.Open();
                    sqlBulkCopy.WriteToServer(dt);
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
                    cmd.CommandText = "INSERT INTO material_tbl(wh_partnumber, wh_description, wh_qty, wh_location, wh_palletid, wh_measureunit, wh_arrivaldate) VALUES('" + _txtPartNumber.Text + "','" + _txtDescription.Text + "'," + _txtQty.Text + ",'" + _txtLocation.Text + "','" + _txtPallet.Text + "','" + _txtMeasureUnit.Text + "','" + _txtArrivalDate.Text + "')";
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();
                }
            }
        }

        protected void _txtPartNumber_TextChanged(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT wh_description, MAX(wh_location) AS Location, MAX(wh_palletid) AS Pallet, MAX(wh_measureunit) AS Measure, MAX(wh_arrivaldate) AS Latest FROM material_tbl WHERE wh_partnumber='" + _txtPartNumber.Text + "' GROUP BY wh_description";
                    cmd.Connection = conn;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        _txtDescription.Text = dr["wh_description"].ToString();
                        _txtLocation.Text = dr["Location"].ToString();
                        _txtPallet.Text = dr["Pallet"].ToString();
                        _txtMeasureUnit.Text = dr["Measure"].ToString();
                    }

                    conn.Close();
                }
            }
            _txtArrivalDate.Text = DateTime.Now.ToString();
        }
        
    }
}