Imports System.Data.SqlClient
Imports System.Data.Sql
Partial Class staff
    Inherits System.Web.UI.Page

    Dim code As String
    Dim conn As SqlConnection
    Dim constr As String
    Dim reader As SqlDataReader
    Dim cmd As SqlCommand
    Dim cmdstr As String
    Dim m, n As Integer
    Dim count As Integer = 0
    Dim s As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("admin") = "" Then
            Response.Redirect("login.aspx")
        End If

        lblmsg.Text = ""
        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()

        If Not IsPostBack Then

            btncancel.Enabled = False
            btnupdate.Enabled = False

        End If

        If Not IsPostBack Then

            cmdstr = "select distinct annual_year from course_info"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            ddlannualyear.Items.Add("None")
            While (reader.Read)
                ddlannualyear.Items.Add(reader("annual_year"))
            End While
            reader.Close()


        End If
        conn.Close()

    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand

        '   Dim x As Integer
        Static flag As Int32 = 1
        If (flag = 1) Then

            code = Convert.ToString(e.CommandArgument)

            If e.CommandName = "DeleteR" Then

                SqlDataSource1.DeleteCommand = "DELETE from staff_theory where course_code='" & code & "' and dept_name='" & Session("dept") & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                SqlDataSource1.Delete()

            ElseIf e.CommandName = "EditR" Then

                conn.Open()
                cmdstr = "select s.course_code,c.ccode,s.dept_name,s.sem,s.staff_name,s.sys_date,c.course_name from staff_theory s,course_info c where s.course_code='" & code & "' and s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "'"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader

                If (reader.Read) Then

                    ddlcoursename.SelectedValue = reader("course_code")
                    txtcode.Text = reader("ccode")
                    txtdate.Text = reader("sys_date")
                    txtdept.Text = reader("dept_name")
                    ddlsem.SelectedValue = reader("sem")
                    txtstaff.Text = reader("staff_name")
                    th.Checked = True
                    pr.Checked = False
                    txtstaff.ReadOnly = False
                    GridView1.Enabled = False
                    GridView2.Enabled = False
                    btnupdate.Enabled = True
                    btncancel.Enabled = True

                End If
                conn.Close()
            End If

            flag = 0

        End If
        SqlDataSource1.SelectCommand = "SELECT s.sys_date, c.ccode,s.course_code, c.course_name,s.dept_name, s.sem, s.staff_name FROM staff_theory s, course_info c where s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

        SqlDataSource2.SelectCommand = "SELECT s.sys_date, c.ccode,s.course_code, c.course_name,s.dept_name, s.sem, s.staff_name FROM staff_practical s, course_info c where s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by sem"
        SqlDataSource2.Select(DataSourceSelectArguments.Empty)

    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        If txtstaff.Text <> "" Then

            Dim name As String
            name = txtstaff.Text
            If th.Checked = True Then
                SqlDataSource1.UpdateCommand = "UPDATE [staff_theory] SET staff_name='" & name & "' where course_code='" & ddlcoursename.SelectedValue & "' and dept_name='" & Session("dept") & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                SqlDataSource1.Update()
            Else
                SqlDataSource2.UpdateCommand = "UPDATE [staff_practical] SET staff_name='" & name & "' where course_code='" & ddlcoursename.SelectedValue & "' and dept_name='" & Session("dept") & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                SqlDataSource2.Update()
            End If


            txtdate.Text = ""
            txtdept.Text = ""
            txtstaff.Text = ""

            txtstaff.ReadOnly = True

            btncancel.Enabled = False
            btnupdate.Enabled = False
            GridView1.Enabled = True
            GridView2.Enabled = True
            th.Checked = False
            pr.Checked = False
            ddlcoursename.SelectedValue = "None"

            SqlDataSource1.SelectCommand = "SELECT s.sys_date, c.ccode,s.course_code, c.course_name,s.dept_name, s.sem, s.staff_name FROM staff_theory s, course_info c where s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by sem"
            SqlDataSource1.Select(DataSourceSelectArguments.Empty)

            SqlDataSource2.SelectCommand = "SELECT s.sys_date, c.ccode,s.course_code, c.course_name,s.dept_name, s.sem, s.staff_name FROM staff_practical s, course_info c where s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by sem"
            SqlDataSource2.Select(DataSourceSelectArguments.Empty)

        Else
            lblmsg.Text = "Please Fill all the Fields"
            'MsgBox("Please Fill all the Fields", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
        End If


    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing

    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

    End Sub

    Protected Sub btncancel_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
       
            txtdate.Text = ""
            txtdept.Text = ""
            txtstaff.Text = ""
            txtstaff.ReadOnly = True

            btncancel.Enabled = False
            btnupdate.Enabled = False
            GridView1.Enabled = True
            GridView2.Enabled = True
            th.Checked = False
            pr.Checked = False
            ddlcoursename.SelectedValue = "None"

    End Sub

    Protected Sub GridView2_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView2.RowCommand
        'Dim x As Integer
        Static flag As Int32 = 1
        If (flag = 1) Then

            code = Convert.ToString(e.CommandArgument)

            If e.CommandName = "DeleteR" Then

                SqlDataSource2.DeleteCommand = "DELETE from staff_practical where course_code='" & code & "' and dept_name='" & Session("dept") & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                SqlDataSource2.Delete()


            ElseIf e.CommandName = "EditR" Then

                conn.Open()
                cmdstr = "select c.ccode,s.course_code,s.dept_name,s.sem,s.staff_name,s.sys_date,c.course_name from staff_practical s,course_info c where s.course_code='" & code & "' and s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "'"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader


                If (reader.Read) Then

                    ddlcoursename.SelectedValue = reader("course_code")
                    txtcode.Text = reader("ccode")
                    txtdate.Text = reader("sys_date")
                    txtdept.Text = reader("dept_name")
                    ddlsem.SelectedValue = reader("sem")
                    txtstaff.Text = reader("staff_name")
                    th.Checked = False
                    pr.Checked = True
                    txtstaff.ReadOnly = False
                    GridView1.Enabled = False
                    GridView2.Enabled = False

                    btnupdate.Enabled = True
                    btncancel.Enabled = True

                End If
                conn.Close()
            End If

            flag = 0

        End If

        SqlDataSource1.SelectCommand = "SELECT s.sys_date, c.ccode,s.course_code, c.course_name,s.dept_name, s.sem, s.staff_name FROM staff_theory s, course_info c where s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

        SqlDataSource2.SelectCommand = "SELECT s.sys_date, c.ccode,s.course_code, c.course_name,s.dept_name, s.sem, s.staff_name FROM staff_practical s, course_info c where s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by sem"
        SqlDataSource2.Select(DataSourceSelectArguments.Empty)

    End Sub

    Protected Sub GridView2_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting

    End Sub

    Protected Sub GridView2_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView2.RowEditing

    End Sub

    Protected Sub GridView2_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView2.RowUpdating

    End Sub

    Protected Sub ddlcoursename_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlcoursename.SelectedIndexChanged
        If ddlcoursename.SelectedValue <> "None" Then
            conn.Open()
            cmdstr = "select course_code from course_info where course_name='" & ddlcoursename.SelectedItem.Text & "' and dept_name='" & Session("dept") & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader()
            If reader.Read Then
                txtcode.Text = reader("ccode")
            End If
            reader.Close()
            ddlsem.Enabled = False

            cmdstr = "select sem from staff_theory where course_code='" & ddlcoursename.SelectedValue & "' and dept_name='" & Session("dept") & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader()

            If reader.Read Then
                s = reader(Convert.ToString("sem"))
                ddlsem.SelectedValue = s
            Else
                reader.Close()
                cmdstr = "select sem from staff_practical where course_code='" & ddlcoursename.SelectedValue & "' and dept_name='" & Session("dept") & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader()

                If reader.Read Then
                    s = reader(Convert.ToString("sem"))
                    ddlsem.SelectedValue = s
                End If
            End If

            reader.Close()
            conn.Close()

            txtstaff.ReadOnly = False
            th.Enabled = True
            pr.Enabled = True
            btncancel.Enabled = True

            lblmsg.Text = "Please don't use different naming formats for the same staff"
        Else
            lblmsg.Text = "Please select the Course Code"

        End If

    End Sub

    Protected Sub ddlannualyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlannualyear.SelectedIndexChanged
        conn.Open()
        ddlcoursename.Items.Clear()

        Dim i As Integer = 1
        If ddlannualyear.SelectedIndex <> 0 Then

            If ddlcoursename.Items.Count = 0 Then

                cmdstr = "select course_code,ccode,course_name from course_info where dept_name='" & Session("dept") & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader()
                ddlcoursename.Items.Add("None")

                While (reader.Read)
                    ddlcoursename.Items.Add(reader("course_name"))
                    ddlcoursename.Items(i).Value = reader("course_code")
                    i = i + 1
                End While

                reader.Close()

            End If
        End If
        conn.Close()

        SqlDataSource1.SelectCommand = "SELECT s.sys_date, c.ccode,s.course_code, c.course_name,s.dept_name, s.sem, s.staff_name FROM staff_theory s, course_info c where s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

        SqlDataSource2.SelectCommand = "SELECT s.sys_date, c.ccode,s.course_code, c.course_name,s.dept_name, s.sem, s.staff_name FROM staff_practical s, course_info c where s.course_code=c.course_code and s.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by sem"
        SqlDataSource2.Select(DataSourceSelectArguments.Empty)


    End Sub
End Class






