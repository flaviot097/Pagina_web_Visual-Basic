<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Pagina_web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
</head>
<style>
	
@import url(https://fonts.googleapis.com/css?family=Noto+Sans);


body {
    height: 100%;
    font-family: 'Noto Sans', sans-serif;
    background-color: #ab4493;
}


.contact_form {
    width: 460px;
    height: auto;
    margin: 80px auto;
    border-radius: 10px;
    padding-top: 30px;
    padding-bottom: 20px;
    background-color: #fbfbfb;
    padding-left: 30px;
}


input {
    background-color: #fbfbfb;
    width: 408px;
    height: 40px;
    border-radius: 5px;
    border-style: solid;
    border-width: 1px;
    border-color: #ab4493;
    margin-top: 10px;
    padding-left: 10px;
    margin-bottom: 20px;
}


textarea {
    background-color: #fbfbfb;
    width: 405px;
    height: 150px;
    border-radius: 5px;
    border-style: solid;
    border-width: 1px;
    border-color: #ab4493;
    margin-top: 10px;
    padding-left: 10px;
    margin-bottom: 20px;
    padding-top: 15px;
}


label {
    display: block;
    float: center;
}


button {
    height: 45px;
    padding-left: 5px;
    padding-right: 5px;
    margin-bottom: 20px;
    margin-top: 10px;
    text-transform: uppercase;
    background-color: #ab4493;
    border-color: #ab4493;
    border-style: solid;
    border-radius: 10px;
    width: 420px;
    cursor: pointer;
}


    button p {
        color: #fff;
        width: 420px;
    }


span {
    color: #ab4493;
}


.aviso {
    font-size: 13px;
    color: #0e0e0e;
}


h1 {
    font-size: 39px;
    text-align: letf;
    padding-bottom: 20px;
    color: #ab4493;
}


h3 {
    font-size: 16px;
    padding-bottom: 30px;
    color: #0e0e0e;
}


p {
    font-size: 14px;
    color: #0e0e0e;
}


::-webkit-input-placeholder {
    color: #a8a8a8;
}


::-webkit-textarea-placeholder {
    color: #a8a8a8;
}


.formulario input:focus {
    outline: 0;
    border: 1px solid #97d848;
}


.formulario textarea:focus {
    outline: 0;
    border: 1px solid #97d848;
}

</style>
<body>
    <form id="form1" runat="server">
        <div style="height: 214px">
            <div class="contact_form" style="margin-top:20px;margin-bottom:20px;" >

		<div class="formulario">			
      <h1>Formulario de contacto</h1>
				<h3>Escríbenos y en breve los pondremos en contacto contigo</h3>


					<form action="" method="post">				

						<%-- formulario de creacion de usuario--%>
								<p>
									<label for="nombre" class="colocar_nombre">Nombre
										<span class="obligatorio">*</span>
									</label>
										<input type="text" name="txtnombre" id="introducir_nombre"  placeholder="Escribe tu nombre">
								</p>
								<p>
									<label for="password" class="colocar_email">Contraseña
										<span class="obligatorio">*</span>
									</label>
										<asp:TextBox runat="server" type="password" name="introducir_email" id="txtpassword"  placeholder="Escribe tu Contraseña"></asp:TextBox>
								</p>									
							
								<asp:Button ID="btnCrear" runat="server" Text="Enviar" OnClick="btnCrear_Click" />

								<p class="aviso">
									<span class="obligatorio"> * </span> Todos los campos son obligatorios.
								</p>					
						        <asp:Label ID="labelMensaje" runat="server" Text=""></asp:Label>


                        <asp:Button Text="Consultar" OnClick="redirigir_Click"  runat="server" />
					</form>
		</div>	
	</div>

          </div>

        
    </form>
</body>
</html>
