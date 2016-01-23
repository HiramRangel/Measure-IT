<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Inventory.aspx.cs" Inherits="MeasureIT.Inventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title" style="font-weight: bold">Inventory</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">

                    <table class="nav-justified">
                        <tr>
                            <td>
                                <asp:Label ID="_lblmaterial" runat="server" Text="Material/sku"></asp:Label>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="_txtmaterial" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <asp:Button ID="_btnsearch" runat="server" Text="Search" cssclass="pull-right btn btn-primary"/>&nbsp;</td>
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
