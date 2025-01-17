Imports CapaControlador.txtFile

Public Class crearTxt
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnUpload_Click(sender As Object, e As EventArgs) Handles btnUpload.Click
        Dim controlador As New CapaControlador.txtFile()
        Dim mensaje As String = controlador.GuardarArchivo(FileUpload1.PostedFile)
        lblMessage.Text = mensaje
    End Sub
End Class