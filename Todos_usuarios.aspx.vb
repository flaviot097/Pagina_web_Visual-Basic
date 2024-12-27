Imports CapaControlador

Public Class Todos_usuarios
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CargarUsuarios()
        End If

    End Sub

    Protected Sub Unnamed2_Click(sender As Object, e As EventArgs)
        CargarUsuarios()
    End Sub

    Protected Sub grilla_de_datos_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles grilla_de_datos.RowCommand

        Dim idUsuario As Integer = Convert.ToInt32(e.CommandArgument)

        labelMensaje.Text = idUsuario.ToString()
    End Sub

    Public Sub CargarUsuarios()
        Dim Controlador As New CapaControlador.ConsultarTodos()
        Dim Usuarios = Controlador.GetTodos()

        grilla_de_datos.DataSource = Usuarios
        grilla_de_datos.DataBind()

        'grilla_de_datos.HeaderRow.Cells(0).Text = "Accion"
        grilla_de_datos.HeaderRow.Cells(1).Text = "Id"
        grilla_de_datos.HeaderRow.Cells(2).Text = "Nombre Usuario"
        grilla_de_datos.HeaderRow.Cells(3).Text = "Contraseña"
    End Sub


End Class