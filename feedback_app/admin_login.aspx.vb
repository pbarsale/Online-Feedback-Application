Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class admin_login
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim constr, cmdstr As String
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader

    Protected Sub Btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnlogin.Click

        Dim id, pass As String
        id = ddluname.SelectedValue
        pass = txtpass.Text

        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()

        cmdstr = "select user_id,user_password from user_info where user_id='" & id & "' and user_password='" & CryptoSecurity.Encrypt(pass) & "' and user_role='" & ddlutype.SelectedValue & "'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader

        If Not (reader.Read) Then
            If (pass = "") Then
                lblmsg.Text = "Please Enter the Password"
                'MsgBox("Please Enter the Password", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Login")
            Else
                lblmsg.Text = "Incorrect Username or Password!!!"
                ' MsgBox("Incorrect Username or Password!!!", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Critical, "Login")
            End If

        Else

            Session("dept") = id
            Session.Timeout = 5000
            Session("admin") = "1"
            If Session("dept") <> "GE" Then
                Response.Redirect("admin.aspx")
            Else
                Response.Redirect("general.aspx")
            End If

        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Text = ""
    End Sub
End Class