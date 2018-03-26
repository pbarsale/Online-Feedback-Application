Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class login
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim constr, cmdstr As String
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader

    Protected Sub Btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Btnlogin.Click

        Dim id, pass As String

        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()

        cmdstr = "select feedback_year,feedback_sem from feedback_schedule where is_on=1"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        If reader.Read() Then
            Session("annual_year") = reader("feedback_year")
            Session("annual_sem") = reader("feedback_sem")
            id = ddluname.SelectedValue
            pass = txtpass.Text
            reader.Close()

            cmdstr = "select user_id,user_password from user_info where user_id='" & id & "' and user_password='" & CryptoSecurity.Encrypt(pass) & "' and user_role='" & ddlutype.SelectedValue & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            If Not (reader.Read) Then
                If (pass = "") Then
                    ' MsgBox("Please Enter the Password", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Login")
                    lblmsg.Text = "Please Enter the Password"
                Else
                    ' MsgBox("Incorrect Username or Password!!!", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Critical, "Login")
                    lblmsg.Text = "Incorrect Username or Password!!!"
                End If

            Else

                Session("dept") = id
                Session("degree") = ddlucourse.SelectedValue
                Session.Timeout = 5000
                Response.Redirect("stud_login.aspx")
            End If

        Else

            lblmsg.Text = "Feedback is temporary restricted"

        End If

    End Sub

 
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmsg.Text = ""
       
    End Sub

    Protected Sub ddluname_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddluname.SelectedIndexChanged
        If ddluname.SelectedValue = "MCA" Then
            ddlucourse.SelectedValue = "PG"
            ddlucourse.Enabled = False
        Else
            ddlucourse.SelectedValue = "UG"
            ddlucourse.Enabled = True
        End If
    End Sub

End Class