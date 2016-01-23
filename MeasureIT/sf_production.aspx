<%@ Page Title="" Language="C#" MasterPageFile="~/home.Master" AutoEventWireup="true" CodeBehind="sf_production.aspx.cs" Inherits="MeasureIT.sf_production" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="acomodo" class="row">
        <div id="Left_box" class="col-md-6">
            <div id="left_box1" class="box box-danger">
                <div id="header_left" class="box-header">
                    <h3 class="box-title">Login</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget ="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div id="left_body" class="box-body">
                    <table class="nav-justified">
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
                               <asp:Button ID="_btnassignStart" runat="server" Text="Login" Width="94px" Height="40px"/>
                           </td>
                        </tr>
                        <tr>
                           <td>&nbsp;</td>
                        </tr>
                     </table>
                </div>
            </div>
        </div>
        <div id="right_box" class="col-md-6">
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
                        <tr>
                           <td><asp:Label ID="_lblWO_line" runat="server" Text="Linea asignada"></asp:Label></td>
                           <td><asp:TextBox ID="_txtWO_line" runat="server" ReadOnly="True"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
            </div>    
      </div>
    </div>
    <div id="workspace" class="row" aria-disabled="False">
        <div id="prod_work" class =" col-md-12">
            <div id="prod_box" class="box box-primary">
                <div id="prod_box_title" class="box-header">
                    <h3 class="box-title">Acividad de Produccion</h3>
                    <div class="box-tools pull-right">
                        <button class="btn btn-box-tool" data-widget ="collapse"><i class="fa fa-minus"></i></button>
                    </div>
                </div>
                <div id="prod_box_action" class="box-body">
                    <table class="nav-justified">
                        <tr>
                            <td><asp:Label ID="_lblProd_wo" runat="server" Text="Orden de Trabajo"></asp:Label></td>
                            <td><asp:Label ID="_lblProd_station" runat="server" Text="Estacion"></asp:Label></td>
                            <td><asp:Label ID="_lblProd_action" runat="server" Text="Actividad"></asp:Label></td>
                       </tr>
                       <tr>
                           <td><asp:TextBox ID="_txtProd_wo" runat="server"></asp:TextBox></td>
                           <td><asp:TextBox ID="_txtProd_station" runat="server"></asp:TextBox></td>
                           <td><asp:TextBox ID="_txtProd_action" runat="server"></asp:TextBox></td>
                           <td>
                               <asp:Button ID="_btnProd_start" runat="server" Text="Inicio" Width="94px" BackColor="#33CC33" Font-Bold="True"/>
                           </td>
                       </tr>
                       <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td><asp:Label ID="_lblProd_startTime" runat="server" Text="Hora de Inicio"></asp:Label></td>
                            <td><asp:Label ID="_lblProd_scrapCnt" runat="server" Text="Piezas Rechazadas"></asp:Label></td>
                            <td><asp:Label ID="_lblProd_tm" runat="server" Text="T.M. Acumulado"></asp:Label></td>
                            <td><asp:Label ID="_lblProd_endTime" runat="server" Text="Hora Finalizado"></asp:Label></td>
                        </tr>
                        <tr>
                            <td><asp:TextBox ID="_txtProd_startTime" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="_txtProd_scrapCnt" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="_txtProd_tm" runat="server"></asp:TextBox></td>
                            <td><asp:TextBox ID="_txtProd_endTime" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr><td>&nbsp;</td></tr>
                        <tr>
                            <td>
                                <asp:Button ID="_btnScrap" runat="server" Text="Rechazo de Piezas" Width="120px" Height="40px" BackColor="#FF6600" Font-Bold="True"/>
                            </td>
                            <td>
                                <asp:Button ID="_btnTM" runat="server" Text="Tiempo Muerto" Width="120px" Height="40px" BackColor="Red" Font-Bold="True"/>
                            </td>
                            <td>
                                <asp:Button ID="_btnCompleted" runat="server" Text="Trabajo Completado" Width="120px" Height="40px" BackColor="#33CC33" Font-Bold="True"/>
                            </td>
                        </tr>
                     </table>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
