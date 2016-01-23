<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="NewMaterial.aspx.cs" Inherits="MeasureIT.New_Material" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-default">
                <div class="box-header">
                    <h3 class="box-title" style="font-weight: bold">New Material</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">

                    <table class="nav-justified">
                        <tr>
                            <td>
                                <asp:Label ID="_lblsku" runat="server" Text="Material/SKU"></asp:Label>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="_txtsku" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lbldescription" runat="server" Text="Description"></asp:Label>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="_txtdescription" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblunit" runat="server" Text="Measure Units"></asp:Label>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="_txtunits" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblvendor" runat="server" Text="Vendor"></asp:Label>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="_txtvendor" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <asp:Button ID="_btnregister" runat="server" Text="Register" CssClass="pull-right btn btn-primary"  />&nbsp;</td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
