<%@ Page Language="vb" EnableEventValidation="false" AutoEventWireup="false" CodeBehind="Todos_usuarios.aspx.vb" Inherits="Pagina_web.Todos_usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label runat="server" Text="" ID="labelMensaje" ></asp:Label>
            <p>
                <asp:Button runat="server" Text="Consultar" OnClick="Unnamed2_Click" />
            </p>
            <asp:GridView ID="grilla_de_datos" runat="server" >
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnSeleccionar" runat="server" Text="eliminar" CommandName="Eliminar" CommandArgument='<%# Eval("IdUsuario") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CommandName="Actualizar" CommandArgument='<%# Eval("IdUsuario") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>

    <asp:Button ID="btnRedirigir" runat="server" Text="Ir a otra vista" PostBackUrl="WebForm1.aspx" />
    <asp:HyperLink ID="ir_eliminar" runat="server" NavigateUrl="~/Todos_usuarios.aspx.vb" >eliminar por id</asp:HyperLink>
    </form>
</body>
</html>
