<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quote-print.aspx.cs" Inherits="MeasureIT.quote_print" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>MeasureIT | Quote</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
      <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
      <link href="dist/css/AdminLTE.min.css" rel="stylesheet" />
    

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
    
  <body onload="window.print();">
      <form runat="server">
    <div class="wrapper">
      <!-- Main content -->
      <section class="invoice">
        <!-- title row -->
        <div class="row">

          <div class="col-xs-12">
            <h2 class="page-header">
              <i class="fa fa-globe"></i> MeasureIT
              <small class="pull-right">
                      <asp:Label ID="_lblDateTime" runat="server" Text="datetime"></asp:Label>
              </small>
                <br />
                <asp:Label ID="_lblSearch" runat="server" Text="Folio: "></asp:Label><asp:TextBox ID="_txtSearch" runat="server" placeholder="Folio"></asp:TextBox><asp:Button ID="_btnGenerate" runat="server" Text="Generate" OnClick="_btnGenerate_Click" />
            </h2>
          </div><!-- /.col -->
        </div>
        <!-- info row -->
        <div class="row invoice-info">
          <div class="col-sm-4 invoice-col">
            From
            <address>
              <strong>Admin, Inc.</strong><br>
              795 Folsom Ave, Suite 600<br>
              San Francisco, CA 94107<br>
              Phone: (804) 123-5432<br/>
              Email: info@measureit.com
            </address>
          </div><!-- /.col -->
          <div class="col-sm-4 invoice-col">
            To
            <address>
              <strong><asp:Label ID="_lblClientNumber" runat="server" Text="[ClientNumber]"></asp:Label>&nbsp; <asp:Label ID="_lblCompanyName" runat="server" Text="[CompanyName]"></asp:Label></strong><br>
                <asp:Label ID="_lblContctName" runat="server" Text="[ContactName]"></asp:Label><br />
                <asp:Label ID="_lblAddress" runat="server" Text="[Address]"></asp:Label><br>
                <asp:Label ID="_lblCitySTZC" runat="server" Text="[CitiSTZP]"></asp:Label><br>
                <asp:Label ID="_lblPhone" runat="server" Text="[Phone]"></asp:Label><br/>
                <asp:Label ID="_lblEmail" runat="server" Text="[Email]"></asp:Label>              
            </address>
          </div><!-- /.col -->
          <div class="col-sm-4 invoice-col">
            <b>Quote # <asp:Label ID="_lblQuoteNum" runat="server" Text="[QuoteNumber]"></asp:Label></b><br/>
            <br/>
            <%--<b>Order ID:</b> 4F3S8J<br/>--%>
            <b>Due Date:</b> <asp:Label ID="_lblDuedate" runat="server" Text="[DueDate]"></asp:Label><br/>
            <%--<b>Account:</b> 968-34567--%>
          </div><!-- /.col -->
        </div><!-- /.row -->

        <!-- Table row -->
        <div class="row">
          <div class="col-xs-12 table-responsive">
            <table class="table table-striped">
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
              <%--<thead>
                <tr>
                  <th>Qty</th>
                  <th>Product</th>
                  <th>Serial #</th>
                  <th>Description</th>
                  <th>Subtotal</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>1</td>
                  <td>Call of Duty</td>
                  <td>455-981-221</td>
                  <td>El snort testosterone trophy driving gloves handsome</td>
                  <td>$64.50</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>Need for Speed IV</td>
                  <td>247-925-726</td>
                  <td>Wes Anderson umami biodiesel</td>
                  <td>$50.00</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>Monsters DVD</td>
                  <td>735-845-642</td>
                  <td>Terry Richardson helvetica tousled street art master</td>
                  <td>$10.70</td>
                </tr>
                <tr>
                  <td>1</td>
                  <td>Grown Ups Blue Ray</td>
                  <td>422-568-642</td>
                  <td>Tousled lomo letterpress</td>
                  <td>$25.99</td>
                </tr>
              </tbody>--%>
            </table>
          </div><!-- /.col -->
        </div><!-- /.row -->

        <div class="row">
          <!-- accepted payments column -->
          <div class="col-xs-6">
            <p class="lead">Payment Methods:</p>
            <img src="dist/img/credit/visa.png" alt="Visa" />
            <img src="dist/img/credit/mastercard.png" alt="Mastercard"/>
            <img src="dist/img/credit/american-express.png" alt="American Express"/>
            <img src="dist/img/credit/paypal2.png" alt="Paypal"/>
            <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
              Note: If you are new customer or  the  company information changed   please  when you send  a purchase order, please attach your Texas sales and use tax exemption certificate or the format 01-339 with the information requested ; if you don´t have any of them the  tax will be included in the invoice.
            </p>
              <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
                  Prices may vary without notice, Prices in USD, Warranty subject to the policies of the supplier or manufacturer.
              </p>
          </div><!-- /.col -->
          <div class="col-xs-6">            
            <div class="table-responsive">
              <table class="table">
                <tr>
                  <th style="width:50%">Subtotal:</th>
                  <td>$<asp:Label ID="_lblSubtotal" runat="server" Text="[Subtotal]"></asp:Label></td>
                </tr>
                <tr>
                  <th>Tax&nbsp;<asp:Label ID="_Taxrate" runat="server" Text="[TaxRate]"></asp:Label>:</th>
                  <td>$<asp:Label ID="_lblTax" runat="server" Text="[Tax]"></asp:Label></td>
                </tr>
                <tr>
                  <th>Shipping:</th>
                  <td>$<asp:Label ID="_lblShipping" runat="server" Text="[Shipping]"></asp:Label></td>
                </tr>
                <tr>
                  <th>Total:</th>
                  <td>$<asp:Label ID="_lblTotal" runat="server" Text="[Total]"></asp:Label></td>
                </tr>
              </table>
            </div>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </section><!-- /.content -->
    </div><!-- ./wrapper -->
    <!-- AdminLTE App -->
      <script src="dist/js/app.min.js"></script>    
      </form>
  </body>
        
</html>
