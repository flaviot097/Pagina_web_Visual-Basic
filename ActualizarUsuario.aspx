<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ActualizarUsuario.aspx.vb" Inherits="Pagina_web.ActualizarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="360px" style="margin-left: 313px; margin-top: 170px" Width="541px">
                <asp:Label ID="Label1" runat="server" style="margin-left: 20px" Text="id        " Width="141px"></asp:Label>
                <asp:TextBox ID="identificador" runat="server" Height="21px" style="margin-left: 1px; margin-top: 99px" Width="211px"></asp:TextBox>
                <asp:Label ID="namess" runat="server" Height="16px" style="margin-top: 4px" Text="nombre" Width="171px"></asp:Label>
                <asp:TextBox ID="nombre" runat="server" style="margin-left: 164px; margin-top: 0px" Width="207px"></asp:TextBox>
                <asp:Label ID="Label2" runat="server" Text="contraseña" Width="168px"></asp:Label>
                <asp:TextBox ID="contrasena" runat="server" style="margin-left: 166px; margin-top: 0px" Width="202px"></asp:TextBox>
                <asp:Button ID="btnAcualizar" runat="server" Height="29px" style="margin-left: 222px" Text="Actualizar" Width="110px" />
                <asp:Label ID="repuestatxt" runat="server" style="margin-left: 237px; margin-top: 27px" Text="fghfghfhfgh" Width="70px"></asp:Label>
                <asp:HyperLink ID="rutaTodosUser" runat="server" NavigateUrl="~/Todos_usuarios.aspx" >Ir a Todos los Usuarios</asp:HyperLink>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
