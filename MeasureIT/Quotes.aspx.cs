using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Xml;
using System.Configuration;
using System.Web.Services;


namespace MeasureIT
{
    public partial class Quotes : System.Web.UI.Page
    {
        string db = ConfigurationManager.ConnectionStrings["erpDev"].ToString();
        public string listFilter = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = @"SELECT (quote_id + 1) AS Folio FROM quote_process_tbl";
                    cmd.Connection = conn;
                    conn.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        _txtFolio.Text = dr["Folio"].ToString();
                    }
                }
            }
            if (!IsPostBack == true)
            {
                Get_Xml();
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            XmlDocument xmldoc = new XmlDocument();
            xmldoc.Load(Server.MapPath("Quotes.xml"));
            XmlElement parentelement = xmldoc.CreateElement("Item");

            XmlElement ID = xmldoc.CreateElement("ID");
            ID.InnerText = _txtPN.Value;
            XmlElement QTY = xmldoc.CreateElement("QTY");
            QTY.InnerText = _txtQty.Value;
            XmlElement Product = xmldoc.CreateElement("Product");
            Product.InnerText = _txtProduct.Value;
            XmlElement Cost = xmldoc.CreateElement("Cost");
            Cost.InnerText = _txtCost.Value;

            parentelement.AppendChild(ID);
            parentelement.AppendChild(QTY);
            parentelement.AppendChild(Product);
            parentelement.AppendChild(Cost);
            xmldoc.DocumentElement.AppendChild(parentelement);

            xmldoc.Save(Server.MapPath("Quotes.xml"));
            _txtQty.Value = string.Empty;
            _txtProduct.Value = string.Empty;
            _txtCost.Value = string.Empty;
            _txtPN.Value = string.Empty;

            if (this.IsPostBack)
            {
                this.Get_Xml();
            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(db))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    for (int i = 0; i < XmlGridView.Rows.Count; i++)
                    {
                        string query = @"INSERT INTO items_quote_tbl(item_id, item_quote, item_qty, item_cost, item_markup, item_description) Values(@ItemID, @WO, @QTY, @Cost, @Markup, @Description)";
                        cmd.CommandText = query;

                        cmd.Parameters.AddWithValue("@ItemID", (XmlGridView.Rows[i].Cells[0].FindControl("LblStuID") as Label).Text);
                        cmd.Parameters.AddWithValue("@WO", _txtFolio.Text);
                        cmd.Parameters.AddWithValue("@Cost", (XmlGridView.Rows[i].Cells[3].FindControl("LblStuCollege") as Label).Text);
                        cmd.Parameters.AddWithValue("@QTY", (XmlGridView.Rows[i].Cells[1].FindControl("LblStuName") as Label).Text);
                        cmd.Parameters.AddWithValue("@Markup", _txtProfit.Value);
                        cmd.Parameters.AddWithValue("@Description", (XmlGridView.Rows[i].Cells[2].FindControl("LblStuCourse") as Label).Text);
                        cmd.Connection = conn;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        cmd.Parameters.Clear();
                        cmd.CommandText = "INSERT INTO quote_process_tbl(quote_id, quote_date_add, quote_date_max, quote_client, quote_requestor, quote_employee, quote_subtotal, quote_tax, quote_shipping, quote_total, quote_status) VALUES(" + _txtFolio.Text + ",'" + DateTime.Now + "','" + DateTime.Now.AddDays(2) + "'," + _txtCliente.Text + "," + _txtCliente.Text + "," + "1" + ",'" + _txtSubtotal.Text + "','" + _txtTaxCalc.Value + "','" + _txtShipping.Value + "','" + _txtTotal.Value + "','" + _ddlStatus.SelectedItem + "')";
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }
                }
            }            
            XmlDocument document = new XmlDocument();
            document.Load(Server.MapPath("Quotes.xml"));
            XmlNode objXNode = document.DocumentElement;
            objXNode.RemoveAll();
            document.Save(Server.MapPath("Quotes.xml"));
            Response.Write("XML Elements/Attributes Deleted Successfully");
            Page.Response.Redirect("Quotes.aspx");

        }

        void Get_Xml()
        {
            DataSet ds = new DataSet();
            ds.ReadXml(Server.MapPath("~/Quotes.xml"));
            if (ds != null && ds.HasChanges())
            {
                XmlGridView.DataSource = ds;
                XmlGridView.DataBind();
            }
            else
            {
                XmlGridView.DataBind();
            }

        }

        protected void BtnInsert_Click(object sender, EventArgs e)
        {
            Insert_XML();
        }

        void Insert_XML()
        {
            TextBox Stu_Id = XmlGridView.FooterRow.FindControl("TxtStuID") as TextBox;
            TextBox Stu_Name = XmlGridView.FooterRow.FindControl("TxtStuName") as TextBox;
            TextBox Stu_Course = XmlGridView.FooterRow.FindControl("TxtStuCourse") as TextBox;
            TextBox Stu_College = XmlGridView.FooterRow.FindControl("TxtStuCollege") as TextBox;
            XmlDocument MyXmlDocument = new XmlDocument();
            MyXmlDocument.Load(Server.MapPath("~/Quotes.xml"));
            XmlElement ParentElement = MyXmlDocument.CreateElement("Item");
            XmlElement ID = MyXmlDocument.CreateElement("ID");
            ID.InnerText = Stu_Id.Text;
            XmlElement Name = MyXmlDocument.CreateElement("QTY");
            Name.InnerText = Stu_Name.Text;
            XmlElement Course = MyXmlDocument.CreateElement("Product");
            Course.InnerText = Stu_Course.Text;
            XmlElement College = MyXmlDocument.CreateElement("Cost");
            College.InnerText = Stu_College.Text;
            ParentElement.AppendChild(ID);
            ParentElement.AppendChild(Name);
            ParentElement.AppendChild(Course);
            ParentElement.AppendChild(College);
            MyXmlDocument.DocumentElement.AppendChild(ParentElement);
            MyXmlDocument.Save(Server.MapPath("~/Quotes.xml"));
            Get_Xml();
        }

        //protected void XmlGridView_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    XmlGridView.EditIndex = e.NewEditIndex;
        //    Get_Xml();
        //}

        //protected void XmlGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    XmlGridView.EditIndex = -1;
        //    Get_Xml();
        //}
        //protected void XmlGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)

        //{
        //    int id = XmlGridView.Rows[e.RowIndex].DataItemIndex;
        //    TextBox Name = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuName") as TextBox;
        //    TextBox Course = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuCourse") as TextBox;
        //    TextBox College = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuCollege") as TextBox;
        //    XmlGridView.EditIndex = -1;
        //    Get_Xml();
        //    DataSet ds = XmlGridView.DataSource as DataSet;
        //    ds.Tables[0].Rows[id]["QTY"] = Name.Text;
        //    ds.Tables[0].Rows[id]["Product"] = Course.Text;
        //    ds.Tables[0].Rows[id]["Cost"] = College.Text;
        //    ds.WriteXml(Server.MapPath("~/Quotes.xml"));
        //    Get_Xml();
        //}
        protected void XmlGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Get_Xml();
            DataSet ds = XmlGridView.DataSource as DataSet;
            ds.Tables[0].Rows[XmlGridView.Rows[e.RowIndex].DataItemIndex].Delete();
            ds.WriteXml(Server.MapPath("~/Quotes.xml"));
            Get_Xml();
        }
        decimal sum = 0;
        protected void XmlGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Label cost = (Label)e.Row.FindControl("LblStuCollege");//take lable id
                Label qty = (Label)e.Row.FindControl("LblStuName");
                sum += decimal.Parse(cost.Text) * decimal.Parse(qty.Text);
                _txtSubtotal.Text = Math.Ceiling(sum / decimal.Parse(_txtProfit.Value)).ToString("N2");
                decimal tax = decimal.Parse(_txtSubtotal.Text) * (decimal.Parse(_txtTax.Value) / 100);
                _txtTaxCalc.Value = tax.ToString("N2");
                _txtTotal.Value = (Convert.ToDouble(_txtSubtotal.Text) + Convert.ToDouble(_txtTaxCalc.Value)).ToString("N2");
            }
        }

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    Session["quote_id"] = null;
        //    Session["quote_id"] = _txtFolio.Text;
        //    Page.Response.Redirect("quote-print.aspx");
        //}

       
    }
}