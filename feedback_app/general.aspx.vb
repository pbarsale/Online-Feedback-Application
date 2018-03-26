Imports System.Data.SqlClient
Imports System.Data.Sql

Partial Class general
    Inherits System.Web.UI.Page
    Dim code, degree As String
    Dim conn As SqlConnection
    Dim sem As Integer
    Dim constr As String
    Dim reader As SqlDataReader
    Dim cmd As SqlCommand
    Dim cmdstr As String
    Dim confirm As Integer
    Dim dept As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("admin") = "" Then
            Response.Redirect("login.aspx")
        End If
       
        lblmsg.Text = ""
        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        dept = Session("dept")

    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        Static flag As Int32 = 1
        If (flag = 1) Then

            code = Convert.ToString(e.CommandArgument)

            If e.CommandName = "DeleteR" Then

                'confirm = MsgBox("Are you sure you want to delete?", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.YesNo + MsgBoxStyle.Question, "Delete Confirmation")

                'If confirm = vbYes Then
                SqlDataSource1.DeleteCommand = "DELETE from course_info where course_code='" & code & "'"
                SqlDataSource1.Delete()
                'End If

            ElseIf e.CommandName = "EditR" Then

                GridView1.Enabled = False
                btncancle.Enabled = True
                btnupdate.Enabled = True
                btnadd.Enabled = False
                conn.Open()
                txtname.ReadOnly = False

                cmdstr = "select course_code,course_name,sys_date,dept_name,degree from course_info where course_code='" & code & "'"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader

                If (reader.Read) Then

                    txtcode.Text = reader("course_code")
                    txtdate.Text = reader("sys_date")
                    txtdept.Text = reader("dept_name")
                    txtname.Text = reader("course_name")
                    ddldegree.SelectedValue = reader("degree")

                End If
                conn.Close()
            End If

            flag = 0

        End If

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click

        If txtname.Text <> "" Then
            Dim name As String
            name = txtname.Text
            SqlDataSource1.UpdateCommand = "UPDATE [course_info] SET course_name='" & name & "' where course_code='" & txtcode.Text & "'"
            SqlDataSource1.Update()
            GridView1.Enabled = True
            txtname.ReadOnly = True
            btnadd.Enabled = True
            btnupdate.Enabled = False
            btncancle.Enabled = False
            txtname.Text = ""
            txtdate.Text = ""
            txtcode.Text = ""
            txtdept.Text = ""
        Else
            lblmsg.Text = "Please Fill all the Fields"
            'MsgBox("Please Fill all the Fields", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
        End If



    End Sub

    Protected Sub btnadd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd.Click

        Try
            Dim ccode As String
            If btnadd.Text = "Add Course" Then

                btncancle.Enabled = True
                txtname.ReadOnly = False
                txtcode.ReadOnly = False
                ddldegree.Enabled = True
                txtdate.Text = DateAndTime.Now
                txtdept.Text = Session("dept")
                btnadd.Text = "Save"
                GridView1.Enabled = False

            ElseIf btnadd.Text = "Save" Then

                If txtcode.Text <> "" And txtname.Text <> "" Then

                    ccode = txtcode.Text.Substring(0, 2).ToUpper()

                    If ccode = Session("dept") Then
                        txtcode.Text = txtcode.Text.ToUpper()

                        degree = ddldegree.SelectedValue
                        SqlDataSource1.InsertCommand = "insert into course_info(course_code,course_name,sys_date,dept_name,degree) values('" & txtcode.Text & "','" & txtname.Text & "','" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & txtdept.Text & "','" & degree & "')"
                        SqlDataSource1.Insert()

                        txtname.ReadOnly = True
                        txtcode.ReadOnly = True
                        ddldegree.Enabled = False
                        btnadd.Text = "Add Course"
                        txtname.Text = ""
                        txtcode.Text = ""
                        txtdate.Text = ""
                        txtdept.Text = ""
                        btncancle.Enabled = False
                        GridView1.Enabled = True
                    Else
                        lblmsg.Text = String.Concat("Course code should Initiate with ", Session("dept"))
                        'MsgBox("Course code should Initiate with " & Session("dept"), MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
                    End If

                Else
                    lblmsg.Text = "Please Fill all the Fields"
                    'MsgBox("Please Fill all the Fields", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
                End If

            End If

        Catch ex As Exception
            lblmsg.Text = "Course already exist"
            'MsgBox("Course already exist", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")

        End Try

    End Sub


    Protected Sub btncancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancle.Click

        If btnadd.Text = "Save" Then

            txtname.ReadOnly = True
            txtcode.ReadOnly = True
            ddldegree.Enabled = False
            btnadd.Text = "Add Course"
            txtname.Text = ""
            txtcode.Text = ""
            txtdate.Text = ""
            txtdept.Text = ""
            btncancle.Enabled = False
            GridView1.Enabled = True

        Else

            txtname.ReadOnly = True
            btnadd.Enabled = True
            btnupdate.Enabled = False
            btncancle.Enabled = False
            txtname.Text = ""
            txtdate.Text = ""
            txtcode.Text = ""
            txtdept.Text = ""
            GridView1.Enabled = True

        End If
    End Sub




End Class
