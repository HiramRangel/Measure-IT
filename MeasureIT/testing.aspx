<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="testing.aspx.cs" Inherits="MeasureIT.testing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-responsive">
        <tr>
            <td>
                <asp:GridView ID="XmlGridView" runat="server" AutoGenerateColumns="False"
                    CssClass="table table-responsive table-bordered"
                    GridLines="Vertical" ShowFooter="True"
                    OnRowCancelingEdit="XmlGridView_RowCancelingEdit" OnRowDeleting="XmlGridView_RowDeleting"
                    OnRowEditing="XmlGridView_RowEditing" OnRowUpdating="XmlGridView_RowUpdating">
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
                            <EditItemTemplate>
                                <asp:TextBox ID="TxtEditStuName" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TxtStuName" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Product">
                            <ItemTemplate>
                                <asp:Label ID="LblStuCourse" runat="server" Text='<%# Bind("Product") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TxtEditStuCourse" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TxtStuCourse" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cost">
                            <ItemTemplate>
                                <asp:Label ID="LblStuCollege" runat="server" Text='<%# Bind("Cost") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="TxtEditStuCollege" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="TxtStuCollege" runat="server"></asp:TextBox>
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="BtnEdit" runat="server" CommandName="Edit" Text="Edit" />
                                <asp:Button ID="BtnDelete" runat="server" CommandName="Delete" Text="Delete" />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:Button ID="BthUpdate" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="BtnCancel" runat="server" CommandName="Cancel" Text="Cancel" />
                            </EditItemTemplate>
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
</asp:Content>
