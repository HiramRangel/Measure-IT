using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Xml;
using System.Configuration;
using System.Text;

namespace MeasureIT
{
    public partial class quote_print : System.Web.UI.Page
    {
        string db = ConfigurationManager.ConnectionStrings["erpDev"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["quote_id"] = "1";
            //_lblQuoteNum.Text = (string)(Session["quote_id"]);
            //_lblDateTime.Text = DateTime.Now.ToString();
            //clientinfo();
            //items();
        }
        private void clientinfo()
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = @"SELECT quote_client, quote_requestor, quote_subtotal, quote_tax, quote_shipping, quote_total FROM quote_process_tbl WHERE quote_id=" + _txtSearch.Text;
                    cmd.Connection = conn;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while(dr.Read())
                    {
                        _lblCompanyName.Text = dr["quote_client"].ToString();
                        _lblContctName.Text = dr["quote_requestor"].ToString();
                        _lblSubtotal.Text = dr["quote_subtotal"].ToString();
                        _lblTax.Text = dr["quote_tax"].ToString();
                        _lblShipping.Text = dr["quote_shipping"].ToString();
                        _lblTotal.Text = dr["quote_total"].ToString();
                    }
                }
            }
        }
        
        private DataTable GetData()
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT item_id AS [ID/PN], item_qty AS [QTY], item_description AS Description, item_cost AS Cost, ROUND((item_qty * CONVERT(money, item_cost)),2) AS Subtotal FROM items_quote_tbl WHERE item_quote ="+_txtSearch.Text))
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

        private void items()
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

        protected void _btnGenerate_Click(object sender, EventArgs e)
        {
            _lblDateTime.Text = DateTime.Now.ToString();
            _lblQuoteNum.Text = _txtSearch.Text;
            clientinfo();
            items();
            _lblSearch.Visible = false;
            _txtSearch.Visible = false;
            _btnGenerate.Visible = false;

        }
    }
}