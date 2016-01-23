using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;

namespace MeasureIT
{
    public partial class WO : System.Web.UI.Page
    {
        string db = ConfigurationManager.ConnectionStrings["erpDev"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            Quotes();
        }
        private DataTable GetData()
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT quote_id AS [Folio], quote_date_add AS [Date], quote_date_max AS [Due Date], quote_client AS Client, quote_requestor AS [Requestor], quote_status AS [Status] FROM quote_process_tbl"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = conn;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            return dt;
                        }
                    }
                }
            }
        }
        private void Quotes()
        {
            DataTable dt = this.GetData();
            StringBuilder html = new StringBuilder();


            html.Append("<thead>");
            html.Append("<tr>");
            foreach (DataColumn column in dt.Columns)
            {
                html.Append("<th>");
                html.Append(column.ColumnName);
                html.Append("</th>");
            }
            html.Append("</tr>");
            html.Append("</thead>");
            html.Append("<tbody>");
            //Building the Data rows.
            foreach (DataRow row in dt.Rows)
            {
                html.Append("<tr>");
                foreach (DataColumn column in dt.Columns)
                {
                    html.Append("<td>");
                    html.Append(row[column.ColumnName]);
                    html.Append("</td>");
                }
                html.Append("</tr>");
            }
            html.Append("</tbody>");
            //Table end.
            //html.Append("<tfoot>");
            //html.Append("<tr>");
            //foreach (DataColumn column in dt.Columns)
            //{
            //    html.Append("<th>");
            //    html.Append(column.ColumnName);
            //    html.Append("</th>");
            //}
            //html.Append("</tr>");
            //html.Append("</tfoot>");




            //Append the HTML string to Placeholder.
            PlaceHolder1.Controls.Add(new Literal { Text = html.ToString() });

        }

        protected void _btnSearch_Click(object sender, EventArgs e)
        {
            items();
            WorkOrder();
            GetWO();
        }
        private void items()
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT item_id AS [PN/ID], item_qty AS [QTY], item_description AS [Description] FROM items_quote_tbl WHERE item_quote=" + _txtFolio.Text))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.Connection = conn;
                        da.SelectCommand = cmd;
                        using (DataSet ds = new DataSet())
                        {
                            da.Fill(ds);
                            _gvItems.DataSource = ds;
                            _gvItems.DataBind();
                        }
                    }
                }

            }
        }
        private void WorkOrder()
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT quote_client AS [Client], quote_requestor AS [Requestor], quote_last_update AS [LastUpdate] FROM quote_process_tbl WHERE quote_id=" + _txtFolio.Text;
                    cmd.Connection = conn;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while(dr.Read())
                    {
                        _txtClient.Text = dr["Client"].ToString();
                        _txtRequestor.Text = dr["Requestor"].ToString();
                        _txtLastUpdate.Text = dr["LastUpdate"].ToString();
                    } 
                }
            }
        }
        private void GetWO()
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "SELECT (wo_id+1) AS WO, (wo_poid + 1) AS PO FROM wo_process_tbl";
                    cmd.Connection = conn;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        _txtWO.Text = dr["WO"].ToString();
                        _txtPO.Text = dr["PO"].ToString();
                    }
                }
            }
        }

        protected void _btnSubmit_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "INSERT INTO wo_process_tbl(wo_quoteid, wo_id, wo_poid, wo_clientid, wo_requestorid, wo_status) VALUES(" + _txtFolio.Text + "," + _txtWO.Text + "," + _txtPO.Text + "," + _txtClient.Text + "," + _txtRequestor.Text + ", 'Open')";
                    cmd.Connection = conn;
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    cmd.CommandText = "UPDATE quote_process_tbl SET quote_status='Closed' WHERE quote_id=" + _txtFolio.Text;
                    cmd.ExecuteNonQuery();
                    Page.Response.Redirect("WO.aspx");
                }
            }
            
        }
    }
}