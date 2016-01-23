﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing.Printing;
using System.Text;
using System.Drawing;
using System.IO;
using System.ComponentModel;

namespace MeasureIT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                PrintDocument pd = new PrintDocument();
                pd.PrintPage += new PrintPageEventHandler(pd_PrintPage);
                // Set the printer name. 
                //pd.PrinterSettings.PrinterName = "\\NS5\hpoffice
                //pd.PrinterSettings.PrinterName = "Zebra New GK420t"               
                pd.Print();

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());

            }

        }

        void pd_PrintPage(object sender, PrintPageEventArgs ev)
        {
            Font printFont = new Font("3 of 9 Barcode", 17);
            Font printFont1 = new Font("Times New Roman", 9, FontStyle.Bold);


            SolidBrush br = new SolidBrush(Color.Black);


            ev.Graphics.DrawString("*AAAAAAFFF*", printFont, br, 10, 65);
            ev.Graphics.DrawString("*AAAAAAFFF*", printFont1, br, 10, 85);

        }
    
    }
}