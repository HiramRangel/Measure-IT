<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Quotes.aspx.cs" Inherits="MeasureIT.Quotes" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">       
    <script type="text/javascript">
    function targetMeBlank() {
        document.forms[0].target = "_blank";
    }
 
</script>
    
    
        
    <%--<script type="text/javascript">
     function AddRow() {
         var table = document.getElementById("_tblItems");
         if (!table) throw "Table not found";
         var row = table.insertRow(-1); //append at the end
         var cell1 = row.insertCell(-1);
         var cell2 = row.insertCell(-1);
         var cell3 = row.insertCell(-1);
         var cell4 = row.insertCell(-1);

         cell1.innerHTML = document.getElementById('_txtQty').value;
         cell2.innerHTML = document.getElementById('_txtProduct').value;
         cell3.innerHTML = document.getElementById('_txtCost').value;
         cell4.innerHTML = document.getElementById('_txtCost').value * document.getElementById('_txtQty').value;

         var total = 0;
         for (var i = 1; _tblItems.rows[i]; i++) {
             total += Number(_tblItems.rows[i].cells[3].innerHTML);
         }
         document.getElementById('_txtSubtotal').value =Math.ceil(total / document.getElementById('_txtProfit').value);
         var tax = (document.getElementById('_txtTax').value / 100) * total;
         document.getElementById('_txtTaxCalc').value = tax;
         document.getElementById('_txtTotal').value = tax + total;

     }
</script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">    
    <div class="row">
        <!-- left column -->
        <div class="col-md-12">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Client Information</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <table class="table table-responsive">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="ID"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="_txtID" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_additem"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Folio"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="_txtFolio" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_additem"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Client"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="_txtCliente" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_additem"></asp:RequiredFieldValidator>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="_txtID" runat="server" CssClass="form-control" ValidationGroup="_additem"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtFolio" runat="server" CssClass="form-control" ValidationGroup="_additem"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtCliente" runat="server" CssClass="form-control" ValidationGroup="_additem"></asp:TextBox>
                            </td>

                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="Profit Margin"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="Tax"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label9" runat="server" Text="Status"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="input-group">
                                    <input id="_txtProfit" type="text" class="form-control" value="1" runat="server" />
                                    <span class="input-group-addon">%</span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                    <input id="_txtTax" type="text" value="16" class="form-control" runat="server" />
                                    <span class="input-group-addon">%</span>
                                </div>
                            </td>
                            <td>
                                <asp:DropDownList ID="_ddlStatus" runat="server" CssClass="form-control">
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Open</asp:ListItem>
                                    <asp:ListItem>Closed</asp:ListItem>
                                    <asp:ListItem>Waiting For Customer</asp:ListItem>
                                    <asp:ListItem>Hold</asp:ListItem>
                                    <asp:ListItem>Accepted</asp:ListItem>
                                    <asp:ListItem>Canceled</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>
                                <asp:Button ID="_btnRegistro" runat="server" Text="New Client" CssClass="btn btn-default pull-right" />
                            </td>
                        </tr>
                    </table>
                </div>
                <%--Box Body--%>
                <div class="box-footer no-padding">
                    <table class="table table-responsive">
                        <tr>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="ID/PN"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_additem" ControlToValidate="_txtPN"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="QTY"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="_txtQty" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_additem"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Product"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="_txtProduct" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_additem"></asp:RequiredFieldValidator>
                            </td>

                            <td>
                                <asp:Label ID="Label7" runat="server" Text="Cost"></asp:Label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="_txtCost" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_additem"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input id="_txtPN" type="text" class="form-control" runat="server" validationgroup="_additem" />
                            </td>
                            <td>
                                <input id="_txtQty" type="text" class="form-control" runat="server" validationgroup="_additem" />
                            </td>
                            <td>
                                <input id="_txtProduct" type="text" class="form-control" runat="server" validationgroup="_additem" />
                            </td>

                            <td>
                                <div class="input-group">
                                    <span class="input-group-addon">$</span>
                                    <input id="_txtCost" type="text" class="form-control" runat="server" validationgroup="_additem" />
                                </div>

                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>

                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Add Item" OnClick="Button1_Click" CssClass="btn btn-default pull-right" ValidationGroup="_additem" />

                            </td>
                        </tr>

                    </table>
                    <table class="table table-responsive">
                        <tr>
                            <td>                                
                                <asp:GridView ID="XmlGridView" runat="server" AutoGenerateColumns="False"
                                    CssClass="table table-striped table-bordered"
                                    GridLines="Vertical" ShowFooter="True" OnRowDeleting="XmlGridView_RowDeleting" OnRowDataBound="XmlGridView_RowDataBound">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:TemplateField HeaderText="ID">
                                            <ItemTemplate>
                                                <asp:Label ID="LblStuID" runat="server" Text='<%# Bind("ID")%>'></asp:Label>
                                            </ItemTemplate>
                                            <FooterTemplate>
                                                <asp:TextBox ID="TxtStuID" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="QTY">
                                            <ItemTemplate>
                                                <asp:Label ID="LblStuName" runat="server" Text='<%# Bind("QTY") %>'></asp:Label>
                                            </ItemTemplate>                                            
                                            <FooterTemplate>
                                                <asp:TextBox ID="TxtStuName" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Product">
                                            <ItemTemplate>
                                                <asp:Label ID="LblStuCourse" runat="server" Text='<%# Bind("Product") %>'></asp:Label>
                                            </ItemTemplate>                                            
                                            <FooterTemplate>
                                                <asp:TextBox ID="TxtStuCourse" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField HeaderText="Cost">
                                            <ItemTemplate>
                                                <asp:Label ID="LblStuCollege" runat="server" Text='<%# Bind("Cost") %>'></asp:Label>
                                            </ItemTemplate>                                            
                                            <FooterTemplate>
                                                <asp:TextBox ID="TxtStuCollege" runat="server"></asp:TextBox>
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                        <asp:TemplateField>
                                            <ItemTemplate>                                                
                                                <asp:Button ID="BtnDelete" runat="server" CommandName="Delete" Text="Delete" />
                                            </ItemTemplate>                                            
                                            <FooterTemplate>
                                                <asp:Button ID="BtnInsert" runat="server" Text="Insert" OnClick="BtnInsert_Click" />
                                            </FooterTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                                    <HeaderStyle BackColor="#003366" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                    <SortedDescendingHeaderStyle BackColor="#000065" />
                                </asp:GridView>
                                    
                            </td>
                        </tr>
                    </table>
                    <%--<asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive table-bordered">
                  
                    </asp:GridView>--%>
                    <table id="_tblTotals" class="table table-responsive">
                        <tr>
                            <td>
                                <h5><strong>Sub Total<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="_txtSubtotal" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Submit"></asp:RequiredFieldValidator>
                                </strong></h5>
                            </td>
                            <td>
                                <div class="input-group col-xs-6">
                                    <span class="input-group-addon">$</span>
                                    <asp:TextBox ID="_txtSubtotal" runat="server" CssClass="form-control" ValidationGroup="_Submit" ReadOnly="True"></asp:TextBox>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5><strong>Tax<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="_txtTaxCalc" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Submit"></asp:RequiredFieldValidator>
                                </strong></h5>
                            </td>
                            <td>
                                <div class="input-group col-xs-6">
                                    <span class="input-group-addon">$</span>
                                    <input id="_txtTaxCalc" type="text" class="form-control" runat="server" validationgroup="_Submit" readonly="readonly" />
                                </div>

                            </td>
                        </tr>
                        <tr>
                             <td>
                                <h5><strong>Shipping<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="_txtShipping" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Submit"></asp:RequiredFieldValidator>
                                </strong></h5>
                            </td>
                            <td>
                                <div class="input-group col-xs-6">
                                    <span class="input-group-addon">$</span>
                                    <input id="_txtShipping" type="text" class="form-control" runat="server" validationgroup="_Submit"/>
                                </div>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h5><strong>Total<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="_txtTotal" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Submit"></asp:RequiredFieldValidator>
                                </strong></h5>
                            </td>
                            <td>
                                <div class="input-group col-xs-6">
                                    <span class="input-group-addon">$</span>
                                    <input id="_txtTotal" type="text" class="form-control" runat="server" validationgroup="_Submit" readonly="readonly" />
                                </div>

                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <div class="input-group col-xs-6">
                                    <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" CssClass="btn btn-default pull-right" ValidationGroup="_Submit" />
                                    <%--<br />
                                    <br />
                                    <asp:Button ID="Button3" runat="server" Text="Create Quote" CssClass="btn btn-info pull-right" OnClick="Button3_Click" OnClientClick="targetMeBlank();" />--%>
                                </div>
                            </td>
                        </tr>
                    </table>



                </div>
                <%--Box Footer--%>
            </div>
        </div>
    </div>
    <%--First Row--%>
</asp:Content>
