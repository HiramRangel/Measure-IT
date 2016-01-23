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

namespace MeasureIT
{
    public partial class testing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack == true)
            {
                Get_Xml();
            }
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

        protected void XmlGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            XmlGridView.EditIndex = e.NewEditIndex;
            Get_Xml();
        }

        protected void XmlGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            XmlGridView.EditIndex = -1;
            Get_Xml();
        }
        protected void XmlGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)

        {
            int id = XmlGridView.Rows[e.RowIndex].DataItemIndex;
            TextBox Name = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuName") as TextBox;
            TextBox Course = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuCourse") as TextBox;
            TextBox College = XmlGridView.Rows[e.RowIndex].FindControl("TxtEditStuCollege") as TextBox;
            XmlGridView.EditIndex = -1;
            Get_Xml();
            DataSet ds = XmlGridView.DataSource as DataSet;
            ds.Tables[0].Rows[id]["QTY"] = Name.Text;
            ds.Tables[0].Rows[id]["Product"] = Course.Text;
            ds.Tables[0].Rows[id]["Cost"] = College.Text;
            ds.WriteXml(Server.MapPath("~/Quotes.xml"));
            Get_Xml();
        }
        protected void XmlGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Get_Xml();
            DataSet ds = XmlGridView.DataSource as DataSet;
            ds.Tables[0].Rows[XmlGridView.Rows[e.RowIndex].DataItemIndex].Delete();
            ds.WriteXml(Server.MapPath("~/Quotes.xml"));
            Get_Xml();
        }
    }
}