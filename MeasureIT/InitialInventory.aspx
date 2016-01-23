<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="InitialInventory.aspx.cs" Inherits="MeasureIT.InitialInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-success">
                <div class="box-header">
                    <h3 class="box-title" style="font-weight: bold">Initial Inventory</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">
                    <table class="table table-responsive">
                        <tr>
                            <td>
                                <asp:Label ID="_lblPartNumber" runat="server" Text="Part Number / SKU"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="_lblDescription" runat="server" Text="Description"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="_lblqty" runat="server" Text="QTY"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="_lbllocation" runat="server" Text="Location"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="_lblPallet" runat="server" Text="Pallet Id"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="_lblMeasure" runat="server" Text="Measure Unit"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="_lblArrivalDate" runat="server" Text="Arrival Date"></asp:Label>
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="_txtPartNumber" runat="server" placeholder="Part Number" CssClass="form-control" AutoPostBack="True" OnTextChanged="_txtPartNumber_TextChanged" ValidationGroup="_Val1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtDescription" runat="server" placeholder="Description" CssClass="form-control" ValidationGroup="_Val1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtQty" runat="server" placeholder="QTY" CssClass="form-control" ValidationGroup="_Val1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtLocation" runat="server" placeholder="Location" CssClass="form-control" ValidationGroup="_Val1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtPallet" runat="server" placeholder="Pallet" CssClass="form-control" ValidationGroup="_Val1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtMeasureUnit" runat="server" placeholder="Measure Unit" CssClass="form-control" ValidationGroup="_Val1"></asp:TextBox>
                            </td>
                            <td>
                                <asp:TextBox ID="_txtArrivalDate" runat="server" placeholder="Arrival Date" CssClass="form-control" ValidationGroup="_Val1"></asp:TextBox>
                            </td>                            
                        </tr>
                        <tr>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field" ControlToValidate="_txtPartNumber" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Val1"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required Field" ControlToValidate="_txtDescription" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Val1"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required Field" ControlToValidate="_txtQty" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Val1"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required Field" ControlToValidate="_txtLocation" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Val1"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required Field" ControlToValidate="_txtPallet" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Val1"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required Field" ControlToValidate="_txtMeasureUnit" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Val1"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Required Field" ControlToValidate="_txtArrivalDate" ForeColor="Red" SetFocusOnError="True" ValidationGroup="_Val1"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="box-footer no-padding">
                    <asp:Button ID="_btnSubmit" runat="server" Text="Submit" CssClass="btn btn-default pull-right" OnClick="_btnSubmit_Click" ValidationGroup="_Val1" />
                    <br />
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="box box-primary">
                <div class="box-header">
                    <h3 class="box-title" style="font-weight: bold">Upload CSV file</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                    </div>
                </div>
                <div class="box-body">                    
                        <table class="table table-condensed table-responsive">
                            <tr>
                                <td>
                                    <asp:FileUpload ID="File_upload" runat="server" />
                                </td>
                                <td>
                                    <asp:Button ID="_btnSubmitFile" runat="server" Text="Submit" CssClass="btn btn-default" OnClick="_btnSubmitFile_Click" />
                                </td>
                            </tr>
                            <tr>
                                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                            </tr>
                        </table>                    
                </div>
            </div>

        </div>
    </div>

</asp:Content>
