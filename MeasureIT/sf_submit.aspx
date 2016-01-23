<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="sf_submit.aspx.cs" Inherits="MeasureIT.sf_submitt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="content_info_wo" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="acomodo" class="row">
        <div id="Left_box" class="col-md-6">
            <div id="left_box1" class="box box-danger">
                <div id="header_left" class="box-header">
                    <h3 class="box-title">Proceso de Asignacion</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget ="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div id="left_body" class="box-body">
                    <table class="nav-justified">
                        <tr>
                            <td colspan="2"><h3>Login</h3></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="_lbl_assignOper" runat="server" Text="Operador"></asp:Label></td>
                            <td><asp:Label ID="_lblassignPswd" runat="server" Text="Contrasena"></asp:Label></td>
                        </tr>
                       <tr>
                            <td><asp:TextBox ID="_txtassignoper" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="_txtassignoperpswd" runat="server"></asp:TextBox></td>
                       </tr>
                       <tr><td>&nbsp;</td></tr> 
                       <tr>
                           <td>
                               <asp:Button ID="_btnassignStart" runat="server" Text="Inicio" Width="94px"/>
                           </td>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                        </tr>
                        <tr>
                           <td colspan="2"><h3>Asignacion de Orden de Trabajo</h3></td>
                        </tr>
                        <tr>
                            <td><asp:Label ID="_lblassignWO" runat="server" Text="Orden de Trabajo"></asp:Label></td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>         
                        <tr>
                            <td><asp:TextBox ID="_txtassignWO" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="_lblassignLineAssign" runat="server" Text="Linea / Area"></asp:Label>
                            </td>
                        </tr>
                        <tr>    
                            <td><asp:TextBox ID="_txtassignLineassign" runat="server"></asp:TextBox></td>
                            <td>
                                <asp:Button ID="_btnassignLine" runat="server" Text="Asignar Orden" Width="94px"/>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div id="right_box" class="col-md-5">
            <div id="right_box1" class="box box-success">
                <div id="header_right" class="box-header">
                    <h3 class="box-title">Informacion de orden</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget ="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div id="rigth_body" class="box-body">
                    <table class="nav-justified">
                        <tr>
                           <td><asp:Label ID="_lblWO_client" runat="server" Text="Cliente"></asp:Label></td>
                           <td><asp:TextBox ID="_txtWO_client" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                       <tr>
                           <td><asp:Label ID="_lblWO_id" runat="server" Text="Orden de Trabajo"></asp:Label></td>
                           <td><asp:TextBox ID="_txtWO_id" runat="server" ReadOnly="True"></asp:TextBox></td>
                       </tr>
                       <tr>
                           <td><asp:Label ID="_lblWO_SubmitDT" runat="server" Text="Fecha de Solicitud"></asp:Label></td>
                           <td><asp:TextBox ID="_txtWO_SubmitID" runat="server" ReadOnly="True"></asp:TextBox></td>
                       </tr>
                        <tr>
                           <td><asp:Label ID="_lblWO_Piezas" runat="server" Text="Numero de Piezas"></asp:Label></td>
                           <td><asp:TextBox ID="_txtWO_Piezas" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr>
                           <td><asp:Label ID="_lblWO_desc" runat="server" Text="Descripcion"></asp:Label></td>
                           <td><asp:TextBox ID="_txtWO_desc" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                           <td><asp:Label ID="_lblWO_line" runat="server" Text="Linea asignada"></asp:Label></td>
                           <td><asp:TextBox ID="_txtWO_line" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
      </div>
</asp:Content>