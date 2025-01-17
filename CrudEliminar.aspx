<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CrudEliminar.aspx.vb" Inherits="Pagina_web.CrudEliminar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<style type="text/css" >
    .formulario{
        display:flex;
        justify-content:center;
        align-items:center;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="panelformulario" runat="server" Height="497px">
                <asp:Panel ID="Panel1" runat="server" Height="365px" style="margin-left: 355px; margin-top: 68px" Width="480px" CssClass="formulario" >
                    <asp:Label ID="LabetextoUsuario" runat="server" Text="Ingrese Id de Usuario"></asp:Label><asp:TextBox  ID="id" runat="server"></asp:TextBox>
                    <br />
                    &nbsp;<asp:Button ID="eliminar" runat="server" Text="Eliminar" />
                    
                    <br />
                    &nbsp;<asp:Button ID="actualizar" runat="server" Text="Actualizar" />
                    <br />
                    <asp:Label ID="respuestatxt" runat="server" Text=""></asp:Label>
                </asp:Panel>
            </asp:Panel>
        </div>
        <asp:HyperLink ID="ver_todos" runat="server" NavigateUrl="~/Todos_usuarios.aspx" >Ver todos los usuarios</asp:HyperLink>
    </form>
</body>
</html>
