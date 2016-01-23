<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="clients.aspx.cs" Inherits="MeasureIT.clients" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <!-- left column -->
        <div class="col-md-6">
            <!-- general form elements -->
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">Add Company</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    
                    <table class="table table-responsive table-bordered">
                        <tr>
                            <td>
                                <asp:Label ID="_lblCustomerID" runat="server" Text="Customer ID"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="_lblCompany" runat="server" Text="Company"></asp:Label>
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="_txtCustomerID" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtCompany" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                           
                        </tr> 
                        <tr>
                            <td>
                                <asp:Label ID="_lblAddress1" runat="server" Text="Address 1"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="_lblAddress2" runat="server" Text="Address 2"></asp:Label>
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="_txtAddress1" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtAddress2" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>                            
                        </tr>
                        <tr>
                            <td>                                
                            </td>
                            <td>
                                <asp:Button ID="_btnSubmit" runat="server" Text="Submit" OnClick="_btnSubmit_Click" CssClass="btn btn-default" />
                            </td>                            
                        </tr>                        
                    </table>
                    
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <!-- general form elements -->
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">Add Contact Information</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">

                </div>
            </div>
        </div>
    </div> <%--End Row--%>
</asp:Content>
