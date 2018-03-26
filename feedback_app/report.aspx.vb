Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data

Partial Class report
    Inherits System.Web.UI.Page

    Dim code As String
    Dim conn As SqlConnection
    Dim constr As String
    Dim reader, reader1, reader2 As SqlDataReader
    Dim cmd, cmd1, cmd2 As SqlCommand
    Dim cmdstr, cmdstr1, cmdstr2, tt As String
    Dim sname(15), course(50), course_id(40), degree As String
    Dim per(40), t As Double
    Dim class_nm(4) As String
    Dim tbtheory(10) As Table
    Dim tbprac(10) As Table
    Dim i, j, c, s, count, num, counter, elective(50), total_students(50), chkelective As Integer
    Dim dept, p As String
    Dim temp As Double
    Dim f1 As New fetch

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("admin") = "" Then
            Response.Redirect("login.aspx")
        End If


        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)

        dept = Session("dept")

        If dept = "CS" Then
            lbldept.Text = " Computer Science and Engineering Department "
        ElseIf dept = "IT" Then
            lbldept.Text = " Information Technology Department "
        ElseIf dept = "CE" Then
            lbldept.Text = "Civil Engineering Department "
        ElseIf dept = "ME" Then
            lbldept.Text = "Mechanical Engineering Department "
        ElseIf dept = "EE" Then
            lbldept.Text = "Electrical Engineering Department "
        ElseIf dept = "EC" Then
            lbldept.Text = "Electronics and Telecommunication Engineering Department "
        ElseIf dept = "MCA" Then
            lbldept.Text = "Master Of Computer Application "
            ddldegree.SelectedValue = "PG"
            ddldegree.Enabled = False
        End If

        If Not IsPostBack Then
            conn.Open()
            cmdstr = "select distinct feedback_year from feedback_schedule"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            ddlannualyear.Items.Add("None")
            While (reader.Read)
                ddlannualyear.Items.Add(reader("feedback_year"))
            End While
            reader.Close()
            conn.Close()

        End If
       

    End Sub

    Protected Sub btndone_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndone.Click

        conn.Open()
        degree = ddldegree.SelectedValue
        If ddlsem.SelectedValue = "ODD" Then
            s = 1
        Else
            s = 2
        End If

        If Session("dept") = "MCA" Then
            num = 6
        ElseIf degree = "PG" Then
            num = 4
        Else
            num = 8
        End If

        lbldept.Text = String.Concat(lbldept.Text, " -  ", degree)

        While (s <= num)

            Dim l1 As New Label
            If Session("dept") = "MCA" Then

                If s = 1 Or s = 2 Then
                    l1.Text = "Class- FY"
                End If
                If s = 3 Or s = 4 Then
                    l1.Text = "Class- SY"
                End If
                If s = 5 Or s = 6 Then
                    l1.Text = "Class- TY"
                End If
            Else
                If s = 1 Or s = 2 Then
                    l1.Text = "Class- FE"
                End If
                If s = 3 Or s = 4 Then
                    l1.Text = "Class- SE"
                End If
                If s = 5 Or s = 6 Then
                    l1.Text = "Class- TE"
                End If
                If s = 7 Or s = 8 Then
                    l1.Text = "Class- BE"
                End If
            End If


            cmdstr1 = "select c.course_name,c.course_code,c.iselective,s.sem from course_info c, staff_theory s where c.dept_name='" & dept & "' and s.sem=" & s & " and c.course_code=s.course_code and c.degree='" & degree & "' and c.annual_year='" & ddlannualyear.SelectedValue & "'"
            'for course id and name

            cmd1 = New SqlCommand(cmdstr1, conn)
            reader1 = cmd1.ExecuteReader
            j = 1

            While (reader1.Read)

                If reader1("iselective") = 1 Then

                    chkelective = f1.checkelectiveresponse(reader1("course_code"), dept, ddlannualyear.SelectedValue, "t")

                    If chkelective = 1 Then
                        course(j) = reader1("course_name")
                        course_id(j) = reader1("course_code")
                        elective(j) = reader1("iselective")
                        j = j + 1
                    End If

                Else
                    course(j) = reader1("course_name")
                    course_id(j) = reader1("course_code")
                    elective(j) = reader1("iselective")
                    j = j + 1

                End If

            End While

            reader1.Close()

            'for staff name

            Dim k As Integer
            k = 1
            i = 1
            While (k <= j - 1)

                cmdstr2 = "select staff_name from staff_theory where course_code='" & course_id(k) & "' and dept_name='" & dept & "' and sem=" & s & " and annual_year='" & ddlannualyear.SelectedValue & "'"
                cmd2 = New SqlCommand(cmdstr2, conn)
                reader2 = cmd2.ExecuteReader

                While (reader2.Read)

                    sname(i) = reader2("staff_name")
                    'MsgBox(sname(i))
                    Me.i = Me.i + 1

                End While
                reader2.Close()
                k = k + 1
            End While

            'for percentage
            k = 1

            counter = 0

            While (k <= j - 1)
                Me.i = 0
                cmdstr2 = "select percentage from theory where course_code='" & course_id(k) & "' and dept_name='" & dept & "' and sem=" & s & " and annual_year='" & ddlannualyear.SelectedValue & "'"
                cmd2 = New SqlCommand(cmdstr2, conn)
                reader2 = cmd2.ExecuteReader
                t = 0
                While (reader2.Read)

                    t = t + reader2("percentage")
                    ' MsgBox(t)
                    Me.i = Me.i + 1

                End While

                per(k) = t / Me.i
                counter = Math.Max(Me.i, counter)
                total_students(k) = Me.i
                reader2.Close()

                k = k + 1
            End While

            count = k
            k = k - 1

            For Me.i = 1 To k
                For Me.j = (Me.i + 1) To k

                    If per(Me.i) < per(j) Then
                        swap(course(Me.i), course(j))
                        swap(course_id(Me.i), course_id(j))
                        swap(sname(Me.i), sname(j))

                        temp = elective(Me.i)                      ' To swap elective array elements for ordering
                        elective(Me.i) = elective(j)
                        elective(j) = temp

                        temp = total_students(Me.i)                ' To swap total students array elements for ordering
                        total_students(Me.i) = total_students(j)
                        total_students(j) = temp

                        temp = per(Me.i)
                        per(Me.i) = per(j)
                        per(j) = temp
                    End If

                Next
            Next



            'Display


            Dim thead As New TableHeaderRow
            thead.Cells.Add(New TableCell())
            thead.Cells.Add(New TableCell())
            thead.Cells.Add(New TableCell())
            thead.Cells.Add(New TableCell())
            thead.Cells.Add(New TableCell())

            thead.Cells(0).Text = "Sr. NO."
            thead.Cells(1).Text = "Name of Faculty"
            thead.Cells(2).Text = "Courses"
            thead.Cells(3).Text = "Staff Index"
            thead.Cells(4).Text = "Total Students"

            tbtheory(s) = New Table
            tbtheory(s).Caption = String.Concat("Theory :", l1.Text, "  ", "(", "Total Students : ", counter, ")")
            tbtheory(s).BorderColor = Drawing.Color.Gray
            tbtheory(s).BorderWidth = 3
            tbtheory(s).BorderStyle = BorderStyle.Groove
            tbtheory(s).CellPadding = 10
            tbtheory(s).CellSpacing = 2
            tbtheory(s).GridLines = GridLines.Both
            tbtheory(s).HorizontalAlign = HorizontalAlign.Center
            thead.BackColor = Drawing.Color.LightGray
            thead.ForeColor = Drawing.Color.Black
            tbtheory(s).Rows.Add(thead)

            For Me.c = 1 To (count - 1)

                Dim trow1 As New TableRow

                trow1.HorizontalAlign = HorizontalAlign.Center


                trow1.Cells.Add(New TableCell())
                trow1.Cells.Add(New TableCell())
                trow1.Cells.Add(New TableCell())
                trow1.Cells.Add(New TableCell())
                trow1.Cells.Add(New TableCell())

                trow1.Cells(0).Text = c
                trow1.Cells(1).Text = sname(c)

                If elective(c) = 1 Then
                    trow1.Cells(2).Text = String.Concat(course(c), "(Elective)")
                Else
                    trow1.Cells(2).Text = course(c)
                End If

                trow1.Cells(3).Text = String.Concat(Math.Round(per(c), 2), "%")
                trow1.Cells(4).Text = total_students(c)
                tbtheory(s).Rows.Add(trow1)
                form1.Controls.Add(tbtheory(s))


            Next



            '==========PRACTICAL==================L



            cmdstr1 = "select c.course_name,c.course_code,c.iselective,s.sem from course_info c, staff_practical s where c.dept_name='" & dept & "' and s.sem=" & s & " and c.course_code=s.course_code and c.degree='" & degree & "' and c.annual_year='" & ddlannualyear.SelectedValue & "'"
            'for course id and name

            cmd1 = New SqlCommand(cmdstr1, conn)
            reader1 = cmd1.ExecuteReader
            j = 1
            While (reader1.Read)


                If reader1("iselective") = 1 Then

                    chkelective = f1.checkelectiveresponse(reader1("course_code"), dept, ddlannualyear.SelectedValue, "p")

                    If chkelective = 1 Then
                        course(j) = reader1("course_name")
                        course_id(j) = reader1("course_code")
                        elective(j) = reader1("iselective")
                        j = j + 1

                    End If

                Else
                    course(j) = reader1("course_name")
                    course_id(j) = reader1("course_code")
                    elective(j) = reader1("iselective")
                    j = j + 1

                End If
                
            End While
            reader1.Close()

            'for staff name

            k = 1
            i = 1
            While (k <= j - 1)

                cmdstr2 = "select staff_name from staff_practical where course_code='" & course_id(k) & "' and dept_name='" & dept & "' and sem=" & s & " and annual_year='" & ddlannualyear.SelectedValue & "'"
                cmd2 = New SqlCommand(cmdstr2, conn)
                reader2 = cmd2.ExecuteReader

                While (reader2.Read)

                    sname(i) = reader2("staff_name")
                    'MsgBox(sname(i))
                    Me.i = Me.i + 1

                End While
                reader2.Close()
                k = k + 1
            End While

            'for percentage
            k = 1

            counter = 0
            While (k <= j - 1)
                Me.i = 0
                counter = 0
                cmdstr2 = "select percentage from practical where course_code='" & course_id(k) & "' and dept_name='" & dept & "' and sem=" & s & " and annual_year='" & ddlannualyear.SelectedValue & "'"
                cmd2 = New SqlCommand(cmdstr2, conn)
                reader2 = cmd2.ExecuteReader
                t = 0
                While (reader2.Read)


                    t = t + reader2("percentage")

                    Me.i = Me.i + 1

                End While

                per(k) = t / Me.i
                counter = Math.Max(Me.i, counter)
                total_students(k) = Me.i
                reader2.Close()

                k = k + 1
            End While


            count = k
            k = k - 1

            For Me.i = 1 To k
                For Me.j = (Me.i + 1) To k

                    If per(Me.i) < per(j) Then

                        swap(course(Me.i), course(j))
                        swap(course_id(Me.i), course_id(j))
                        swap(sname(Me.i), sname(j))

                        temp = elective(Me.i)                      ' To swap elective array elements for ordering
                        elective(Me.i) = elective(j)
                        elective(j) = temp

                        temp = total_students(Me.i)                ' To swap total students array elements for ordering
                        total_students(Me.i) = total_students(j)
                        total_students(j) = temp

                        temp = per(Me.i)
                        per(Me.i) = per(j)
                        per(j) = temp

                    End If

                Next
            Next

            'Display





            Dim thead1 As New TableHeaderRow
            thead1.Cells.Add(New TableCell())
            thead1.Cells.Add(New TableCell())
            thead1.Cells.Add(New TableCell())
            thead1.Cells.Add(New TableCell())
            thead1.Cells.Add(New TableCell())

            thead1.Cells(0).Text = "Sr. NO."
            thead1.Cells(1).Text = "Name of Faculty"
            thead1.Cells(2).Text = "Courses"
            thead1.Cells(3).Text = "Staff Index"
            thead1.Cells(4).Text = "Total students"

            tbprac(s) = New Table
            tbprac(s).Caption = String.Concat("Practical :", l1.Text)
            tbprac(s).BorderColor = Drawing.Color.Gray
            tbprac(s).BorderWidth = 3
            tbprac(s).BorderStyle = BorderStyle.Groove
            tbprac(s).CellPadding = 10
            tbprac(s).CellSpacing = 2
            tbprac(s).GridLines = GridLines.Both
            tbprac(s).HorizontalAlign = HorizontalAlign.Center
            thead1.BackColor = Drawing.Color.LightGray
            tbprac(s).Rows.Add(thead1)



            For Me.c = 1 To count - 1
                Dim trow1 As New TableRow

                trow1.HorizontalAlign = HorizontalAlign.Center

                trow1.Cells.Add(New TableCell())
                trow1.Cells.Add(New TableCell())
                trow1.Cells.Add(New TableCell())
                trow1.Cells.Add(New TableCell())
                trow1.Cells.Add(New TableCell())

                trow1.Cells(0).Text = c
                trow1.Cells(1).Text = sname(c)

                If elective(c) = 1 Then
                    trow1.Cells(2).Text = String.Concat(course(c), "(Elective)")
                Else
                    trow1.Cells(2).Text = course(c)
                End If

                trow1.Cells(3).Text = String.Concat(Math.Round(per(c), 2), "%")
                trow1.Cells(4).Text = total_students(c)
                tbprac(s).Rows.Add(trow1)
                form1.Controls.Add(tbprac(s))


            Next
            s = s + 2
        End While


        conn.Close()
    End Sub
    Public Sub swap(ByRef a As String, ByRef b As String)
        Dim temp As String
        temp = a
        a = b
        b = temp
    End Sub

    Protected Sub ddlannualyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlannualyear.SelectedIndexChanged
        lblyear.Text = String.Concat("Feedback Report :", ddlannualyear.SelectedValue)
    End Sub
End Class
