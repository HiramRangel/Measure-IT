<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="PutAway.aspx.cs" Inherits="MeasureIT.PutAway" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-default">
                <div class="box-header">
                    <h3 class="box-title" style="font-weight: bold">PutAway</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">

                    <table class="nav-justified">
                        <tr>
                            <td>
                                <asp:Label ID="_lblmaterial" runat="server" Text="Material"></asp:Label>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="_txtmaterial" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblpalletid" runat="server" Text="Pallet ID"></asp:Label>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="_txtpalletid" runat="server"  CssClass="form-control"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lbllocation" runat="server" Text="Location"></asp:Label>&nbsp;</td>
                            <td>
                                <asp:TextBox ID="_txtlacation" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>

                            </td>
                            <td>
                                <asp:Button ID="_btnlocate" runat="server" Text="Locate" cssclass="pull-right btn btn-primary"/>&nbsp;</td>
                        </tr>
                    </table>

                </div>
            </div>
        </div>
    </div>

</asp:Content>
