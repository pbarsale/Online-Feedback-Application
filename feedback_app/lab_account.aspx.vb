Imports System.Data.SqlClient
Imports System.Data.Sql

Partial Class lab_account
    Inherits System.Web.UI.Page
    Dim code As String
    Dim conn As SqlConnection
    Dim constr As String
    Dim reader As SqlDataReader
    Dim cmd As SqlCommand
    Dim cmdstr As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("admin") = "" Then
            Response.Redirect("login.aspx")
        End If

        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        lblmsg.Text = ""


    End Sub

    Protected Sub btndone_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndone.Click
        conn.Open()
        Dim dept, pass As String
        Dim x, x1 As Integer
        pass = ""
        dept = Session("dept")
        cmdstr = "select * from user_info where user_id='" & dept & "' and user_role='Student'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader

        If (reader.Read) Then
            pass = reader("user_password")

            reader.Close()

            x = String.Compare(txtold.Text, CryptoSecurity.Decrypt(pass))
            x1 = String.Compare(txtnew.Text, txtretype.Text)
            If txtold.Text = "" Or txtnew.Text = "" Or txtretype.Text = "" Then
                MsgBox("Please fill all the fields")
            Else
                If (x) Then
                    lblmsg.Text = "Incorrect Old Password"
                    txtold.Text = ""
                ElseIf (x1) Then
                    lblmsg.Text = "Incorrect New Password"

                Else

                    cmdstr = "UPDATE [user_info] SET user_password='" & CryptoSecurity.Encrypt(txtnew.Text) & "' where user_id='" & dept & "' and user_role='Student'"
                    cmd = New SqlCommand(cmdstr, conn)
                    cmd.ExecuteNonQuery()
                    lblmsg.Text = "Password updated successfully!"
                    Response.Redirect("admin.aspx")
                End If
            End If

        Else
            lblmsg.Text = "User does not exist"
        End If


        conn.Close()


    End Sub
End Class
