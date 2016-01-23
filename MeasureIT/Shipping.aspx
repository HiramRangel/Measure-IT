<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Shipping.aspx.cs" Inherits="MeasureIT.Alamcen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title" style="font-weight: bold">Shipping</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                        <table class="nav-justified">
                            <tr>
                                <td>
                                    <asp:Label ID="_lblPart" runat="server" Text="Part #"></asp:Label>&nbsp;
                                </td>
                                <td>
                                    <asp:TextBox ID="_txtPart" runat="server" CssClass="form-control" placeholder="EX9987145"></asp:TextBox>&nbsp;</td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="_btnSearch" runat="server" Text="search" CssClass="pull-right btn btn-primary" />&nbsp;</td>
                            </tr>
                        </table>
          
                  
                </div>
                <div class="box-footer">
                    <div class="col-xs-12 table-responsive">
                        <table class="table table-striped">
                            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
   


   
</asp:Content>
