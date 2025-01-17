Imports System.Drawing
Imports System.IO
Imports Microsoft.VisualBasic.ApplicationServices

Public Class CrudEliminar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub actualizar_Click(sender As Object, e As EventArgs) Handles actualizar.Click
        Console.Write("hola")
    End Sub

    Protected Sub eliminar_Click(sender As Object, e As EventArgs) Handles eliminar.Click
        Dim Usuario = id.Text
        If String.IsNullOrEmpty(Usuario) Then
            respuestatxt.Text = "Debe introducir el Id del usuario qe desea eliminar"
            respuestatxt.ForeColor = Color.Red
        Else
            Dim idUsuario As Integer = Int32.Parse(Usuario)

            eliminarUsuario(idUsuario)

        End If

    End Sub

    Private Function eliminarUsuario(usuarioID As Integer) As String
        Dim respuesta As String
        Try
            Dim controlador As New CapaControlador.EliminarUsuarioControlador()
            controlador.EliminarUsuarioPorId(usuarioID)
            LabetextoUsuario.Text = "Se elmino el usuario correctamente"
            respuesta = "Se elmino el usuario correctamente"
        Catch ex As Exception

        End Try
        Return respuesta
    End Function
End Class