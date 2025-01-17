Imports System.Drawing

Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCrear_Click(sender As Object, e As EventArgs) Handles btnCrear.Click
        labelMensaje.Text = "Creando Usuario..."

        Dim nombre As String = Request.Form("txtnombre")
        Dim contrasena As String = txtpassword.Text

        If String.IsNullOrWhiteSpace(nombre) OrElse String.IsNullOrWhiteSpace(contrasena) Then
            labelMensaje.Text = "Se deben completar todos los campos"
            labelMensaje.ForeColor = Color.Red

        Else
            Dim saludar As New CapaControlador.Controlador_Consulta_post()
            Dim saludo = saludar.CrearUsuario(nombre, contrasena)
            labelMensaje.Text = saludo
        End If
    End Sub

    Protected Sub redirigir_Click(sender As Object, e As EventArgs)
        Response.Redirect("Todos_usuarios.aspx")
    End Sub

    Protected Sub txtpassword_TextChanged(sender As Object, e As EventArgs)

    End Sub
End Class