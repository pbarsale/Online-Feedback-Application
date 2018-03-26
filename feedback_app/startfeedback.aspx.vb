Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data

Partial Class startfeedback
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim constr, cmdstr As String
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader
   
    Protected Sub btnstart_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnstart.Click
       
        If txtyear.Text = "" Or txtpass.Text = "" Then

            lblmsg.Text = "Please fill all the fields"

        Else

            constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
            conn = New SqlConnection(constr)
            conn.Open()

            cmdstr = "select user_id,user_password from user_info where user_id='CS' and user_password='" & CryptoSecurity.Encrypt(txtpass.Text) & "' and user_role='Admin'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader()

            If Not (reader.Read) Then
                reader.Close()
                lblmsg.Text = "Incorrect Password!!!"

            Else
                reader.Close()

                cmdstr = "select feedback_year,feedback_sem,is_on from feedback_schedule where is_on=1"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader()

                If reader.Read() Then


                    lblshow.Text = "Please first stop the feedback of the year " & reader("feedback_year") & " and semester " & reader("feedback_sem")
                    reader.Close()

                Else

                    reader.Close()
                    cmdstr = "select feedback_year,feedback_sem,is_on from feedback_schedule where feedback_year='" & txtyear.Text & "' and feedback_sem=" & ddlsem.SelectedValue
                    cmd = New SqlCommand(cmdstr, conn)
                    reader = cmd.ExecuteReader()

                    If Not (reader.Read()) Then
                        reader.Close()

                        cmdstr = "insert into feedback_schedule(sys_date,feedback_year,feedback_sem,is_on) values('" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & txtyear.Text & "'," & ddlsem.SelectedValue & ",1)"
                        cmd = New SqlCommand(cmdstr, conn)
                        cmd.ExecuteNonQuery()

                        lblshow.Text = "Feedback started"

                    Else

                        reader.Close()
                        cmdstr = "update feedback_schedule set is_on=1 where feedback_year='" & txtyear.Text & "' and feedback_sem=" & ddlsem.SelectedValue
                        cmd = New SqlCommand(cmdstr, conn)
                        cmd.ExecuteNonQuery()
                        lblshow.Text = "Feedback started"

                    End If
                End If


        End If
        conn.Close()

        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblshow.Text = ""
        lblmsg.Text = ""
    End Sub

    Protected Sub btnend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnend.Click

        If txtyear.Text = "" Or txtpass.Text = "" Then
            lblmsg.Text = "Please fill all the fields"

        Else

            constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
            conn = New SqlConnection(constr)
            conn.Open()

            cmdstr = "select user_id,user_password from user_info where user_id='CS' and user_password='" & CryptoSecurity.Encrypt(txtpass.Text) & "' and user_role='Admin'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader()

            If Not (reader.Read) Then
                reader.Close()
                lblmsg.Text = "Incorrect Password!!!"

            Else
                reader.Close()
                cmdstr = "select is_on from feedback_schedule where feedback_year='" & txtyear.Text & "' and feedback_sem=" & ddlsem.SelectedValue
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader()

                If reader.Read() Then

                    If reader("is_on") = 1 Then
                        reader.Close()
                        cmdstr = "update feedback_schedule set is_on=0 where feedback_year='" & txtyear.Text & "' and feedback_sem=" & ddlsem.SelectedValue
                        cmd = New SqlCommand(cmdstr, conn)
                        cmd.ExecuteNonQuery()
                        lblshow.Text = "Feedback stopped"
                    Else
                        reader.Close()
                        lblshow.Text = "The feedback for the selected year is already stopped"
                    End If

                Else

                    reader.Close()
                    lblshow.Text = "The feedback for the selected year and semester does not exist"

                End If


            End If

        End If

    End Sub
End Class
