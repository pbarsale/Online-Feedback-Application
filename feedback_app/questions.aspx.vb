Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class questions
    Inherits System.Web.UI.Page

    Dim quesid As Integer
    Dim conn As SqlConnection
    Dim constr As String
    Dim reader As SqlDataReader
    Dim cmd As SqlCommand
    Dim cmdstr As String
    Dim x As Integer
    Dim str As String


    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click


        If btnadd.Text = "Add Questions" Then

            btncancle.Enabled = True
            txtquestion.ReadOnly = False
            th.Enabled = True
            pr.Enabled = True

            txtdate.Text = DateAndTime.Now
            btnadd.Text = "Save"
            GridView1.Enabled = False

        ElseIf btnadd.Text = "Save" Then

            If txtquestion.Text <> "" And (th.Checked = True Or pr.Checked = True) Then

                If th.Checked = True Then
                    str = "theory"
                Else
                    str = "practical"
                End If

                SqlDataSource1.InsertCommand = "insert into question_info(sys_date,question_type,question_name) values('" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & str & "','" & txtquestion.Text & "')"
                SqlDataSource1.Insert()

                btncancle.Enabled = False
                txtquestion.ReadOnly = True
                txtdate.Text = ""
                txtquestion.Text = ""
                btnadd.Text = "Add Questions"
                th.Checked = False
                pr.Checked = False
                th.Enabled = False
                pr.Enabled = False
                GridView1.Enabled = True
            Else
                ' MsgBox("Please Fill all the Fields", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
            End If

        End If

       




    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("admin") = "" Then
            Response.Redirect("login.aspx")
        End If
       

        lblmsg.Text = ""
        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        Dim dept As String
        dept = Session("dept")

    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        Static flag As Int32 = 1
        If (flag = 1) Then

            quesid = Convert.ToInt32(e.CommandArgument)
        
            If e.CommandName = "DeleteR" Then

                ' x = MsgBox("Are you sure you want to delete?", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.YesNo + MsgBoxStyle.Question, "Confirm")
                'If x = vbYes Then
                SqlDataSource1.DeleteCommand = "DELETE from question_info where question_id=" & quesid
                SqlDataSource1.Delete()

                'End If
            ElseIf e.CommandName = "EditR" Then
                GridView1.Enabled = False
                btncancle.Enabled = True
                btnupdate.Enabled = True
                btnadd.Enabled = False

                conn.Open()
                txtquestion.ReadOnly = False

                cmdstr = "select * from question_info where question_id=" & quesid
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader()

                If (reader.Read) Then
                    txtdate.Text = reader("sys_date")
                    txtquestion.Text = reader("question_name")
                    txtid.Text = reader("question_id")

                    If reader("question_type") = "theory" Then
                        th.Checked = True
                    ElseIf reader("question_type") = "practical" Then
                        pr.Checked = True
                    Else
                        th.Checked = False
                        pr.Checked = False

                    End If

                End If
                conn.Close()
            End If

            flag = 0

        End If

    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click


        If txtquestion.Text <> "" Then
            
            SqlDataSource1.UpdateCommand = "UPDATE [question_info] SET question_name='" & txtquestion.Text & "' where question_id=" & Convert.ToInt16(txtid.Text)
            SqlDataSource1.Update()

            btnupdate.Enabled = False
            btncancle.Enabled = False
            btnadd.Enabled = True
            th.Checked = False
            pr.Checked = False
            txtquestion.ReadOnly = True

            txtdate.Text = ""
            txtquestion.Text = ""
            GridView1.Enabled = True
        Else
            lblmsg.Text = "Please Fill all the Fields"
            'MsgBox("Please Fill all the Fields", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
        End If

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

    End Sub

    Protected Sub btncancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancle.Click
        If btnadd.Text = "Save" Then

            btncancle.Enabled = False
            txtquestion.ReadOnly = True
            txtdate.Text = ""
            txtquestion.Text = ""
            btnadd.Text = "Add Questions"
            th.Checked = False
            pr.Checked = False
            th.Enabled = False
            pr.Enabled = False
            GridView1.Enabled = True

        Else

            btnupdate.Enabled = False
            btncancle.Enabled = False
            btnadd.Enabled = True
            th.Checked = False
            pr.Checked = False
            txtquestion.ReadOnly = True

            txtdate.Text = ""
            txtquestion.Text = ""
            GridView1.Enabled = True

        End If
    End Sub

End Class
