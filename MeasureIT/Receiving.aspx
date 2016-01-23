<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="Receiving.aspx.cs" Inherits="MeasureIT.Recibos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-default">
                <div class="box-header">
                    <h3 class="box-title" style="font-weight: bold">Receiving</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                    <hr />
                </div>

                <div class="box-body">


                    <table class="nav-justified">
                        <tr>
                            <td class="center-block">
                                <asp:Label ID="_lblpart" runat="server" Text="Part #"></asp:Label>
                            </td>
                            <td>
                                <div class="col-xs-8">
                                    <asp:TextBox ID="_txtpart" runat="server" CssClass="form-control" AutoPostBack="True" OnTextChanged="_txtpart_TextChanged"></asp:TextBox>&nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="center-block">
                                <asp:Label ID="_lblDescription" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td>
                                <div class="col-xs-8">
                                    <asp:TextBox ID="_txtDescription" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>&nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="center-block">
                                <asp:Label ID="_lblMeasure" runat="server" Text="Measure Unit"></asp:Label>
                            </td>
                            <td>
                                <div class="col-xs-8">
                                    <asp:TextBox ID="_txtMeasure" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>&nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="center-block">

                                <asp:Label ID="_lblqty" runat="server" Text="Qty"></asp:Label>

                            </td>
                            <td>
                                <div class="col-xs-8">
                                    <asp:TextBox ID="_txtqty" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="center-block">
                                <asp:Label ID="_lblpallet" runat="server" Text="Pallet ID"></asp:Label>

                            </td>
                            <td>
                                <div class="col-xs-8">
                                    <asp:TextBox ID="_txtpallet" runat="server" CssClass="form-control"></asp:TextBox>&nbsp;
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <div>
                                    <asp:Button ID="_btnSubmit" runat="server" Text="Submit" CssClass="pull-right btn btn-primary" OnClick="_btnSubmit_Click" />
                                </div>
                            </td>
                        </tr>
                    </table>


                </div>
            </div>
        </div>
    </div>
</asp:Content>
