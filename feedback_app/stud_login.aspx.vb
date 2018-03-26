Imports System.Data.SqlClient
Imports System.Data.Sql

Partial Class stud_login
    Inherits System.Web.UI.Page
    Dim conn As SqlConnection
    Dim constr, cmdstr As String
    Dim cmd As SqlCommand
    Dim reader As SqlDataReader
    Dim f As New fetch
    Protected Sub btnnext_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnnext.Click

        Dim year As String

        If ddlyear.SelectedIndex = 0 Or (ddlelective.Items.Count > 1 And ddlelective.SelectedIndex = 0) Then
            lblmsg.Text = "Please select all the fields"
        Else


            Session("year") = ddlyear.SelectedValue

            If Session("dept") = "MCA" Then
                If ddlyear.SelectedValue = "FY" Then
                    If ddlsem.SelectedValue = 1 Then
                        year = "1"
                    Else
                        year = "2"
                    End If
                ElseIf ddlyear.SelectedValue = "SY" Then
                    If ddlsem.SelectedValue = 1 Then
                        year = "3"
                    Else
                        year = "4"
                    End If
                Else
                    If ddlsem.SelectedValue = 1 Then
                        year = "5"
                    Else
                        year = "6"
                    End If
                End If
            Else
                If ddlyear.SelectedValue = "FE" Then
                    If ddlsem.SelectedValue = 1 Then
                        year = "1"
                    Else
                        year = "2"
                    End If
                ElseIf ddlyear.SelectedValue = "SE" Then
                    If ddlsem.SelectedValue = 1 Then
                        year = "3"
                    Else
                        year = "4"
                    End If
                ElseIf ddlyear.SelectedValue = "TE" Then
                    If ddlsem.SelectedValue = 1 Then
                        year = "5"
                    Else
                        year = "6"
                    End If
                Else
                    If ddlsem.SelectedValue = 1 Then
                        year = "7"
                    Else
                        year = "8"
                    End If
                End If

            End If

            Session("class") = year

            Dim grade As String
            If rb1.Checked Then
                grade = rb1.Text
            ElseIf rb2.Checked Then
                grade = rb2.Text
            ElseIf rb3.Checked Then
                grade = rb3.Text
            Else
                grade = rb4.Text
            End If

            Session("grade") = grade
            Session("course_code") = ddlelective.SelectedItem.Value
            Session("prac_course_code") = ddlelectiveprac.SelectedItem.Value
            Session("course_name") = ddlelective.SelectedItem.Text
            Response.Redirect("theory_resp.aspx")

        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("dept") = "" Then
            Response.Redirect("login.aspx")
        End If
        lblmsg.Text = ""

        If Not IsPostBack Then

            If Session("dept") = "MCA" Then
                ddlyear.Items.Add("FY")
                ddlyear.Items.Add("SY")
                ddlyear.Items.Add("TY")

            ElseIf Session("degree") = "PG" Then
                ddlyear.Items.Add("FE")
                ddlyear.Items.Add("SE")

            Else
                ddlyear.Items.Add("FE")
                ddlyear.Items.Add("SE")
                ddlyear.Items.Add("TE")
                ddlyear.Items.Add("BE")

            End If
            lbldate.Text = DateAndTime.Now.ToString("dd/MM/yyyy")
            lbldept.Text = String.Concat(Session("dept"), " - ", Session("degree"))
            lblannualyear.Text = Session("annual_year")
            ddlsem.SelectedValue = Session("annual_sem")

        End If




    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click

        If btnlogout.Text = "Logout" Then
            lblpass.Visible = True
            txtpass.Visible = True
            txtpass.Text = ""
            btnlogout.Text = "Submit"
        Else

            Dim pass As String
            pass = txtpass.Text

            constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
            conn = New SqlConnection(constr)
            conn.Open()

            cmdstr = "select user_id,user_password from user_info where user_id='" & Session("dept") & "' and user_password='" & CryptoSecurity.Encrypt(pass) & "' and user_role='Student'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            If Not (reader.Read) Then
                ' MsgBox("Incorrect Username or Password!!!", MsgBoxStyle.MsgBoxSetForeground + MsgBoxStyle.Critical, "Login")
                txtpass.Text = ""
            Else
                btnlogout.Text = "Logout"
                lblpass.Visible = False
                txtpass.Visible = False

                Response.Redirect("login.aspx")

            End If

        End If

    End Sub

    Protected Sub ddlyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlyear.SelectedIndexChanged
        Dim sem, i As Integer
        ddlelective.Items.Clear()
        ddlelective.Items.Add("None")
        ddlelectiveprac.Items.Clear()
        ddlelectiveprac.Items.Add("None")
        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()


        If Session("dept") = "MCA" Then
            If ddlyear.SelectedValue = "FY" Then
                If ddlsem.SelectedValue = 1 Then
                    sem = "1"
                Else
                    sem = "2"
                End If
            ElseIf ddlyear.SelectedValue = "SY" Then
                If ddlsem.SelectedValue = 1 Then
                    sem = "3"
                Else
                    sem = "4"
                End If
            Else
                If ddlsem.SelectedValue = 1 Then
                    sem = "5"
                Else
                    sem = "6"
                End If
            End If
        Else
            If ddlyear.SelectedValue = "FE" Then
                If ddlsem.SelectedValue = 1 Then
                    sem = "1"
                Else
                    sem = "2"
                End If
            ElseIf ddlyear.SelectedValue = "SE" Then
                If ddlsem.SelectedValue = 1 Then
                    sem = "3"
                Else
                    sem = "4"
                End If
            ElseIf ddlyear.SelectedValue = "TE" Then
                If ddlsem.SelectedValue = 1 Then
                    sem = "5"
                Else
                    sem = "6"
                End If
            Else
                If ddlsem.SelectedValue = 1 Then
                    sem = "7"
                Else
                    sem = "8"
                End If
            End If

        End If


        cmdstr = "select c.course_code,c.course_name from course_info c,staff_theory t where c.course_code=t.course_code and c.dept_name='" & Session("dept") & "' and c.degree='" & Session("degree") & "' and c.annual_year='" & Session("annual_year") & "' and c.iselective=1 and t.sem=" & sem
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()
        i = 1
        While reader.Read()
            ddlelective.Items.Add(reader("course_name"))
            ddlelective.Items(i).Value = reader("course_code")
            i = i + 1

            'MsgBox(reader("course_code"))
            'MsgBox(f.code(reader("course_code")))

        End While

        reader.Close()

        i = 1
        cmdstr = "select c.course_code,c.course_name from course_info c,staff_practical t where c.course_code=t.course_code and c.dept_name='" & Session("dept") & "' and c.degree='" & Session("degree") & "' and c.annual_year='" & Session("annual_year") & "' and c.iselective=1 and t.sem=" & sem
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        While reader.Read()

            ddlelectiveprac.Items.Add(reader("course_name"))
            ddlelectiveprac.Items(i).Value = reader("course_code")
            i = i + 1

        End While
        reader.Close()


    End Sub

   
End Class
