Public Class ActualizarUsuario
    Inherits System.Web.UI.Page

    Public idUser As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        escribirID()
    End Sub

    Protected Sub btnAcualizar_Click(sender As Object, e As EventArgs) Handles btnAcualizar.Click

        Dim id As Integer = Int32.Parse(identificador.Text)
        'Dim nombre As String = namess.Text
        'Dim contra As String = contrasena.Text
        'Dim respuesta As String = ActualizarUsuarioControllador(id, nombre, contra)
        repuestatxt.Text = id

    End Sub


    Public Function ActualizarUsuarioControllador(id As Integer, name As String, pass As String) As String
        Dim Consulta As New CapaControlador.ActualizarUsuario()
        Dim respuesta As String = Consulta.actualizaPorId(id, name, pass)
        Return respuesta
    End Function

    Public Sub escribirID()
        idUser = Convert.ToInt32(Context.Items("id"))
        If idUser = Nothing Then
            identificador.Text = "inserte id"
        Else
            identificador.Text = idUser.ToString()
        End If
    End Sub
End Class