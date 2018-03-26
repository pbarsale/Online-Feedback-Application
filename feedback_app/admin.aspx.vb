Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.OleDb
Imports System.Data

Partial Class admin
    Inherits System.Web.UI.Page
    Dim code, degree As String
    Dim conn As SqlConnection
    Dim sem As Integer
    Dim constr As String
    Dim reader, reader1 As SqlDataReader
    Dim cmd, cmd1 As SqlCommand
    Dim cmdstr, cmdstr1 As String
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
        If Not IsPostBack Then

            If Session("dept") = "MCA" Then
                ddlyear.Items.Add("FY")
                ddlyear.Items.Add("SY")
                ddlyear.Items.Add("TY")
                ddldegree.Items.Add("PG")

            Else

                ddlyear.Items.Add("FE")
                ddlyear.Items.Add("SE")
                ddlyear.Items.Add("TE")
                ddlyear.Items.Add("BE")
                ddldegree.Items.Add("UG")
                ddldegree.Items.Add("PG")
            End If

            btncancle.Enabled = False
            btnupdate.Enabled = False
        End If


        If Not IsPostBack Then
            conn.Open()
            cmdstr = "select distinct annual_year from course_info"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            ddlannualyear.Items.Add("None")
            While (reader.Read)
                ddlannualyear.Items.Add(reader("annual_year"))
            End While
            reader.Close()
            conn.Close()

        End If
        

    End Sub

    Protected Sub GridView1_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView1.RowCommand


        Static flag As Int32 = 1
        If (flag = 1) Then

            code = Convert.ToString(e.CommandArgument)

            If e.CommandName = "DeleteR" Then


                SqlDataSource1.DeleteCommand = "DELETE from course_info where course_code='" & code & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                SqlDataSource1.Delete()

            ElseIf e.CommandName = "EditR" Then

                GridView1.Enabled = False
                GridView2.Enabled = False
                btncancle.Enabled = True
                btnupdate.Enabled = True
                conn.Open()
                txtname.ReadOnly = False

                cmdstr = "select c.ccode,c.course_code,c.course_name,c.sys_date,c.dept_name,c.degree,s.sem from course_info c,staff_theory s where c.course_code='" & code & "' and c.course_code=s.course_code"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader

                If (reader.Read) Then

                    txtcode.Text = reader("ccode")
                    txtdate.Text = reader("sys_date")
                    txtdept.Text = reader("dept_name")
                    txtname.Text = reader("course_name")
                    sem = reader("sem")
                    ddldegree.SelectedValue = reader("degree")

                    If Session("dept") = "MCA" Then

                        If sem = 1 Then
                            ddlyear.SelectedValue = "FY"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 2 Then
                            ddlyear.SelectedValue = "FY"
                            ddlsem.SelectedValue = "2"

                        ElseIf sem = 3 Then
                            ddlyear.SelectedValue = "SY"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 4 Then
                            ddlyear.SelectedValue = "SY"
                            ddlsem.SelectedValue = "2"

                        ElseIf sem = 5 Then
                            ddlyear.SelectedValue = "TY"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 6 Then
                            ddlyear.SelectedValue = "TY"
                            ddlsem.SelectedValue = "2"
                        End If

                    Else

                        If sem = 1 Then
                            ddlyear.SelectedValue = "FE"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 2 Then
                            ddlyear.SelectedValue = "FE"
                            ddlsem.SelectedValue = "2 "

                        ElseIf sem = 3 Then
                            ddlyear.SelectedValue = "SE"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 4 Then
                            ddlyear.SelectedValue = "SE"
                            ddlsem.SelectedValue = "2"

                        ElseIf sem = 5 Then
                            ddlyear.SelectedValue = "TE"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 6 Then
                            ddlyear.SelectedValue = "TE"
                            ddlsem.SelectedValue = "2"

                        ElseIf sem = 7 Then
                            ddlyear.SelectedValue = "BE"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 8 Then
                            ddlyear.SelectedValue = "BE"
                            ddlsem.SelectedValue = "2"

                        End If

                    End If
                End If

                conn.Close()
            End If

            flag = 0

        End If
        SqlDataSource1.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective, c.course_name, c.sys_date, c.dept_name,s.sem,c.degree FROM course_info c,staff_theory s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

        SqlDataSource2.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective, c.course_name, c.sys_date, c.dept_name,s.sem,c.degree FROM course_info c,staff_practical s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.sem"
        SqlDataSource2.Select(DataSourceSelectArguments.Empty)

    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click

        If txtname.Text <> "" Then
            Dim name, c_code As String
            name = txtname.Text
            c_code = String.Concat(txtcode.Text, "#", ddlannualyear.SelectedValue)

            SqlDataSource1.UpdateCommand = "UPDATE [course_info] SET course_name='" & name & "' where course_code='" & c_code & "'"
            SqlDataSource1.Update()
            GridView1.Enabled = True
            GridView2.Enabled = True
            txtname.ReadOnly = True
            btnupdate.Enabled = False
            btncancle.Enabled = False
            txtname.Text = ""
            txtdate.Text = ""
            txtcode.Text = ""
            txtdept.Text = ""

            SqlDataSource1.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective, c.course_name, c.sys_date, c.dept_name,s.sem,c.degree FROM course_info c,staff_theory s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.sem"
            SqlDataSource1.Select(DataSourceSelectArguments.Empty)

            SqlDataSource2.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective, c.course_name, c.sys_date, c.dept_name,s.sem,c.degree FROM course_info c,staff_practical s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.sem"
            SqlDataSource2.Select(DataSourceSelectArguments.Empty)
           
        Else
            lblmsg.Text = "Please Fill all the Fields"
            'MsgBox("Please Fill all the Fields", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Exclamation, "Warning")
        End If

        

    End Sub

    Protected Sub btncancle_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancle.Click

        txtname.ReadOnly = True
        btnupdate.Enabled = False
        btncancle.Enabled = False
        ddlyear.Enabled = False
        ddlsem.Enabled = False
        ddldegree.Enabled = False
        txtname.Text = ""
        txtdate.Text = ""
        txtcode.Text = ""
        txtdept.Text = ""
        GridView1.Enabled = True
        GridView2.Enabled = True

    End Sub


   
    Protected Sub btnflush_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnflush.Click

        ''Dim res As String
        ''res = MsgBox("All the student responses for theory and practical subjects will be deleted. Are you sure to continue?", MsgBoxStyle.YesNo + MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Question, "Confirm")
        ''If vbYes Then

        'constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        'conn = New SqlConnection(constr)
        'conn.Open()

        'dept = Session("dept")
        'cmdstr = "delete from theory where dept_name='" & dept & "'"
        'cmd = New SqlCommand(cmdstr, conn)
        'cmd.ExecuteNonQuery()

        'cmdstr = "delete from practical where dept_name='" & dept & "'"
        'cmd = New SqlCommand(cmdstr, conn)
        'cmd.ExecuteNonQuery()

        'cmdstr = "delete from comments where dept_name='" & dept & "'"
        'cmd = New SqlCommand(cmdstr, conn)
        'cmd.ExecuteNonQuery()
        ''MsgBox("Data deleted successsfully", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Information)
        'conn.Close()
        ''Else
        ''End If

        Response.Redirect("course.aspx")
    End Sub


    Protected Sub ddldegree_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddldegree.SelectedIndexChanged
        If Session("dept") <> "MCA" Then
            If ddldegree.SelectedValue = "PG" Then
                ddlyear.Items.Clear()
                ddlyear.Items.Add("FE")
                ddlyear.Items.Add("SE")
            Else
                ddlyear.Items.Clear()
                ddlyear.Items.Add("FE")
                ddlyear.Items.Add("SE")
                ddlyear.Items.Add("TE")
                ddlyear.Items.Add("BE")
            End If
        End If
    End Sub

    Protected Sub ddlannualyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlannualyear.SelectedIndexChanged

        SqlDataSource1.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective, c.course_name, c.sys_date, c.dept_name,s.sem,c.degree FROM course_info c,staff_theory s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

        SqlDataSource2.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective, c.course_name, c.sys_date, c.dept_name,s.sem,c.degree FROM course_info c,staff_practical s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.sem"
        SqlDataSource2.Select(DataSourceSelectArguments.Empty)



    End Sub

    Protected Sub GridView2_RowCommand(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCommandEventArgs) Handles GridView2.RowCommand
        Static flag As Int32 = 1
        If (flag = 1) Then

            code = Convert.ToString(e.CommandArgument)

            If e.CommandName = "DeleteR" Then


                SqlDataSource2.DeleteCommand = "DELETE from course_info where course_code='" & code & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                SqlDataSource2.Delete()

            ElseIf e.CommandName = "EditR" Then

                GridView2.Enabled = False
                GridView1.Enabled = False
                btncancle.Enabled = True
                btnupdate.Enabled = True
                conn.Open()
                txtname.ReadOnly = False

                cmdstr = "select c.ccode,c.course_code,c.course_name,c.sys_date,c.dept_name,c.degree,s.sem from course_info c,staff_practical s where c.course_code='" & code & "' and c.course_code=s.course_code"
                cmd = New SqlCommand(cmdstr, conn)
                reader = cmd.ExecuteReader

                If (reader.Read) Then

                    txtcode.Text = reader("ccode")
                    txtdate.Text = reader("sys_date")
                    txtdept.Text = reader("dept_name")
                    txtname.Text = reader("course_name")
                    sem = reader("sem")
                    ddldegree.SelectedValue = reader("degree")

                    If Session("dept") = "MCA" Then

                        If sem = 1 Then
                            ddlyear.SelectedValue = "FY"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 2 Then
                            ddlyear.SelectedValue = "FY"
                            ddlsem.SelectedValue = "2"

                        ElseIf sem = 3 Then
                            ddlyear.SelectedValue = "SY"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 4 Then
                            ddlyear.SelectedValue = "SY"
                            ddlsem.SelectedValue = "2"

                        ElseIf sem = 5 Then
                            ddlyear.SelectedValue = "TY"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 6 Then
                            ddlyear.SelectedValue = "TY"
                            ddlsem.SelectedValue = "2"
                        End If

                    Else

                        If sem = 1 Then
                            ddlyear.SelectedValue = "FE"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 2 Then
                            ddlyear.SelectedValue = "FE"
                            ddlsem.SelectedValue = "2 "

                        ElseIf sem = 3 Then
                            ddlyear.SelectedValue = "SE"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 4 Then
                            ddlyear.SelectedValue = "SE"
                            ddlsem.SelectedValue = "2"

                        ElseIf sem = 5 Then
                            ddlyear.SelectedValue = "TE"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 6 Then
                            ddlyear.SelectedValue = "TE"
                            ddlsem.SelectedValue = "2"

                        ElseIf sem = 7 Then
                            ddlyear.SelectedValue = "BE"
                            ddlsem.SelectedValue = "1"

                        ElseIf sem = 8 Then
                            ddlyear.SelectedValue = "BE"
                            ddlsem.SelectedValue = "2"

                        End If

                    End If
                End If

                conn.Close()
            End If

            flag = 0

        End If
        SqlDataSource1.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective, c.course_name, c.sys_date, c.dept_name,s.sem,c.degree FROM course_info c,staff_theory s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.sem"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)

        SqlDataSource2.SelectCommand = "SELECT c.course_code,c.annual_year,c.ccode,c.iselective, c.course_name, c.sys_date, c.dept_name,s.sem,c.degree FROM course_info c,staff_practical s where c.course_code=s.course_code and c.dept_name='" & Session("dept") & "' and c.annual_year='" & ddlannualyear.SelectedValue & "' order by s.sem"
        SqlDataSource2.Select(DataSourceSelectArguments.Empty)
    End Sub


    Protected Sub GridView2_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView2.RowDeleting

    End Sub

    Protected Sub GridView2_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView2.RowEditing

    End Sub

    Protected Sub GridView2_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView2.RowUpdating

    End Sub

    Protected Sub GridView1_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles GridView1.RowDeleting

    End Sub

    Protected Sub GridView1_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles GridView1.RowEditing

    End Sub

    Protected Sub GridView1_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles GridView1.RowUpdating

    End Sub
End Class
