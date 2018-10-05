<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Presentacion.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="290px">
        <b>Registo de Cuenta</b>
        <b/>

        <b/>

        <b/>

        <table>
            <tr>
                <td>Tipo de usuario</td>
                <td>
                    <asp:DropDownList ID="ddlTipoUsuario" runat="server">
                        <asp:ListItem Selected="True" Value="Seleccione">Seleccione </asp:ListItem>
                        <asp:ListItem Value="Encargado">Encargado Curso</asp:ListItem>
                        <asp:ListItem>Apoderado</asp:ListItem>
                    </asp:DropDownList></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvTipoUsuario" runat="server" ErrorMessage="* Debe seleccionar un Tipo de usuario" ControlToValidate="ddlTipoUsuario" ForeColor="Red" InitialValue="Seleccione"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Nombre</td>
                <td>
                    <asp:TextBox ID="tbxNombre" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvNombre" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxNombre" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
                    <asp:CompareValidator ID="cvNombre" runat="server" ErrorMessage="* Ingrese nombre valido" ControlToValidate="tbxNombre" Display="Dynamic" ForeColor="Red" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
                
                </td>
            </tr>
            <tr>
                <td>Apellido Paterno</td>
                <td>
                    <asp:TextBox ID="tbxApellidoP" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvApellidoP" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxApellidoP" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="cvApellidoP" runat="server" ErrorMessage="* Ingrese un Apellido valido" ControlToValidate="tbxApellidoP" Display="Dynamic" ForeColor="Red" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
                
                </td>
            </tr>
            <tr>
                <td>Apellido Materno</td>
                <td>
                    <asp:TextBox ID="tbxApellidoM" runat="server"></asp:TextBox></td>
                <td><asp:CompareValidator ID="cvApellidoM" runat="server" ErrorMessage="* Ingrese un Apellido valido" ControlToValidate="tbxApellidoM" Display="Dynamic" ForeColor="Red" Type="String" Operator="DataTypeCheck"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td>Nombre Usuario</td>
                <td>
                    <asp:TextBox ID="tbxUsername" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvUsername" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxUsername" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td>Contraseña</td>
                <td>
                    <asp:TextBox ID="tbxPassword" runat="server" TextMode="Password"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxPassword" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> </td>
            </tr>
            <tr>
                <td>Correo</td>
                <td>
                    <asp:TextBox ID="tbxEmail" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvEmail" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxEmail" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Ingrese un correo valido" ControlToValidate="tbxEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>

                </td>
            </tr>
            <tr>
                <td>Celular</td>
                <td>
                    <asp:TextBox ID="tbxCelular" runat="server"></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="rfvCelular" runat="server" ErrorMessage="* Campo Obligatorio" ControlToValidate="tbxCelular" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>                 

                </td>
            </tr>
            <tr>
                <td>Telefono Fijo</td>
                <td>
                    <asp:TextBox ID="tbxTelefono" runat="server"></asp:TextBox></td>
                    <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnRegistrar" runat="server" Text="Registrarse" Width="128px" OnClick="btnRegistrar_Click" /></td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                </td>
            </tr>


        </table>
        
        
        
        
        
        
        
    </asp:Panel>
</asp:Content>
