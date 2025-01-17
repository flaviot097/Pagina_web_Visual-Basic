<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="crearTxt.aspx.vb" Inherits="Pagina_web.crearTxt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnUpload" runat="server" Text="Subir Archivo" OnClick="btnUpload_Click" />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>

        </div>
    </form>
</body>
</html>
