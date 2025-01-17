Imports System.Security.Cryptography.X509Certificates
Imports CapaControlador

Public Class Todos_usuarios
    Inherits System.Web.UI.Page

    Public idUser As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            CargarUsuarios()
        End If

    End Sub

    Protected Sub Unnamed2_Click(sender As Object, e As EventArgs)
        CargarUsuarios()
    End Sub

    'selecionar id del elemento de la tabla + ejecutar funcion EliminarUsuario()
    Protected Sub grilla_de_datos_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles grilla_de_datos.RowCommand

        Dim idUsuario As Integer = Convert.ToInt32(e.CommandArgument)
        idUser = idUsuario
        Dim caca As String
        If e.CommandName = "Actualizar" Then

            'pasar datos mediante contexto sin usar url cookies o session 

            'ejemplo Session("nombre") = "Juan"
            'Session("edad") = 30

            Context.Items("id") = idUser
            Server.Transfer("ActualizarUsuario.aspx", True)

        ElseIf e.CommandName = "eliminar" Then
            EliminarUsuario(idUsuario)
        End If
        labelMensaje.Text = "Se elimino el susuario con el id " + idUser.ToString()
        CargarUsuarios()

    End Sub

    Public Sub CargarUsuarios()
        Dim Controlador As New CapaControlador.ConsultarTodos()
        Dim Usuarios = Controlador.GetTodos()

        grilla_de_datos.DataSource = Usuarios
        grilla_de_datos.DataBind()

        'grilla_de_datos.HeaderRow.Cells(0).Text = "Accion"
        grilla_de_datos.HeaderRow.Cells(2).Text = "Id"
        grilla_de_datos.HeaderRow.Cells(3).Text = "Nombre Usuario"
        grilla_de_datos.HeaderRow.Cells(4).Text = "Contraseña"
    End Sub


    'Eliminar usuario
    Public Sub EliminarUsuario(id As Integer)
        Dim ControladorEliminar As New CapaControlador.EliminarUsuarioControlador()
        ControladorEliminar.EliminarUsuarioPorId(id)

    End Sub


End Class