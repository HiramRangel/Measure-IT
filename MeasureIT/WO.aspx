<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="WO.aspx.cs" Inherits="MeasureIT.WO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-6">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title">WO Request</h3>
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
                                <asp:Label ID="_lblFolio" runat="server" Text="Folio"></asp:Label>
                            </td>
                            <td>
                                <div class="input-group">
                                    <asp:TextBox ID="_txtFolio" runat="server" placeholder="Folio" CssClass="form-control"></asp:TextBox>
                                    <span class="input-group-btn">
                                        <asp:Button ID="_btnSearch" CssClass="btn btn-info" runat="server" Text="Search" OnClick="_btnSearch_Click" />
                                    </span>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblWO" runat="server" Text="Work Order"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtWO" runat="server" placeholder="WO #" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblPO" runat="server" Text="Purchase Order"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtPO" runat="server" placeholder="PO #" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblClient" runat="server" Text="Client"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtClient" runat="server" placeholder="Client" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblRequestor" runat="server" Text="Requestor"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtRequestor" runat="server" placeholder="Requestor" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblLastUpdate" runat="server" Text="Last Update"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtLastUpdate" runat="server" placeholder="Last Update" CssClass="form-control"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Button ID="_btnSubmit" runat="server" Text="Convert To WO" CssClass="btn btn-default pull-right" OnClick="_btnSubmit_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title">Quote Items List</h3>
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
                                <asp:GridView ID="_gvItems" runat="server" CssClass="table table-responsive table-bordered"></asp:GridView>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <%--end row--%>
    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-header">
                    <h3 class="box-title">Quotes List</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <table id="QuotesList" class="table table-bordered table-hover">
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                    </table>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
