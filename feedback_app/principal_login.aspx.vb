Imports System.Data.SqlClient
Imports System.Data.Sql
Public Class principal_login
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim constr, cmdstr As String
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader

    Protected Sub Btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnlogin.Click
        Dim pass As String

        pass = txtpass.Text

        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()

        cmdstr = "select user_password from user_info where user_id='GECA' and user_password='" & CryptoSecurity.Encrypt(pass) & "' and user_role='Principal'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader

        If Not (reader.Read) Then
            If (pass = "") Then
                lblmsg.Text = "Please Enter the Password"
                'MsgBox("Please Enter the Password", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Login")
            Else
                lblmsg.Text = "Incorrect Username or Password!!!"
                'MsgBox("Incorrect Username or Password!!!", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Critical, "Login")
            End If

        Else

            Session.Timeout = 5000
            Session("principal") = "1"
            Response.Redirect("report_all.aspx")
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
        lblmsg.Text = ""
    End Sub
End Class