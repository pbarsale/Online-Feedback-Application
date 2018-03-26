Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data

Partial Class individual
    Inherits System.Web.UI.Page

    Dim code As String
    Dim conn As SqlConnection
    Dim constr As String
    Dim reader, reader1, reader2, reader3 As SqlDataReader
    Dim cmd, cmd1, cmd2 As SqlCommand
    Dim cmdstr, cmdstr1, cmdstr2, tt As String
    Dim course1(50), course2(50), course_id1(40), course_id2(40), t11(50) As String
    Dim per(40), total, t As Double
    Dim staffname(50), ques(50) As String
    Dim quescount, studrespcount, flag As Integer
    Dim class_nm(4) As String
    Dim tbtheory(10) As Table
    Dim tbprac(10) As Table

    Dim i, j, c, k, s, count, str, n, num, counter, tcount, pcount, counter1, semcount, chkelective As Integer
    Dim dept, p, degree As String
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
            lbldept.Text = " Information Technology Department"
        ElseIf dept = "CE" Then
            lbldept.Text = "Civil Engineering Department"
        ElseIf dept = "ME" Then
            lbldept.Text = "Mechanical Engineering Department"
        ElseIf dept = "EE" Then
            lbldept.Text = "Electrical Engineering Department"
        ElseIf dept = "EC" Then
            lbldept.Text = "Electronics and Telecommunication Engineering Department "
        ElseIf dept = "MCA" Then
            lbldept.Text = "Master Of Computer Application "
      
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
        n = 0
       
        While (n < 2)
            If ddlsem.SelectedValue = "ODD" Then
                s = 1
                semcount = 1
            Else
                semcount = 2
                s = 2
            End If

            If n = 0 Then
                degree = "UG"
                num = 8
            Else

                If Session("dept") = "MCA" Then
                    num = 6
                Else
                    num = 4
                End If
                degree = "PG"

            End If

            While (s <= num)
                Dim l1 As New Label
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

                'Theory subjects

                cmdstr1 = "select c.course_name,c.course_code,c.iselective,s.sem from course_info c, staff_theory s where c.dept_name='" & dept & "' and s.sem=" & s & " and c.course_code=s.course_code and s.staff_name='" & ddlstaff.SelectedValue & "' and c.degree='" & degree & "' and c.annual_year='" & ddlannualyear.SelectedValue & "'"

                'for course id and name

                cmd1 = New SqlCommand(cmdstr1, conn)
                reader1 = cmd1.ExecuteReader

                j = 1


                While (reader1.Read)

                    If reader1("iselective") = 1 Then

                        chkelective = f1.checkelectiveresponse(reader1("course_code"), dept, ddlannualyear.SelectedValue, "t")

                        If chkelective = 1 Then
                            course1(j) = reader1("course_name")
                            course_id1(j) = reader1("course_code")
                            j = j + 1
                        End If

                    Else
                        course1(j) = reader1("course_name")
                        course_id1(j) = reader1("course_code")
                        j = j + 1
                    End If

                End While

                reader1.Close()

                'for percentage and displaying

                If j > 1 Then

                    k = 1

                    counter = 0
                    While (k <= j - 1)

                        Me.i = 0
                        cmdstr2 = "select percentage from theory where course_code='" & course_id1(k) & "' and dept_name='" & dept & "' and sem=" & s & " and annual_year='" & ddlannualyear.SelectedValue & "'"
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
                        ' MsgBox(per(k))
                        reader2.Close()

                        k = k + 1
                    End While

                    count = k
                    k = k - 1

                    For Me.i = 1 To k
                        For Me.j = (Me.i + 1) To k

                            If per(Me.i) < per(j) Then
                                swap(course1(Me.i), course1(j))
                                swap(course_id1(Me.i), course_id1(j))
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
                    thead.Cells(2).Text = "Course Code"
                    thead.Cells(3).Text = "Course Name"
                    thead.Cells(4).Text = "Staff Index"

                    tbtheory(s) = New Table
                    tbtheory(s).Caption = String.Concat("Theory :", l1.Text, "   ", degree, "        ", "(", "Total Students : ", counter, ")")
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
                        trow1.Cells(1).Text = ddlstaff.SelectedValue
                        trow1.Cells(2).Text = f1.code(course_id1(c))
                        trow1.Cells(3).Text = course1(c)

                        trow1.Cells(4).Text = String.Concat(Math.Round(per(c), 2), "%")
                        tbtheory(s).Rows.Add(trow1)
                        form1.Controls.Add(tbtheory(s))



                    Next
                End If





                '==========PRACTICAL==================L



                cmdstr1 = "select c.course_name,c.course_code,c.iselective,s.sem from course_info c, staff_practical s where c.dept_name='" & dept & "' and s.sem=" & s & " and c.course_code=s.course_code and s.staff_name='" & ddlstaff.SelectedValue & "' and c.degree='" & degree & "' and c.annual_year='" & ddlannualyear.SelectedValue & "'"

                'for course id and name

                cmd1 = New SqlCommand(cmdstr1, conn)
                reader1 = cmd1.ExecuteReader
                j = 1

                While (reader1.Read)

                    If reader1("iselective") = 1 Then

                        chkelective = f1.checkelectiveresponse(reader1("course_code"), dept, ddlannualyear.SelectedValue, "p")

                        If chkelective = 1 Then
                            course2(j) = reader1("course_name")
                            course_id2(j) = reader1("course_code")
                            j = j + 1

                        End If

                    Else
                        course2(j) = reader1("course_name")
                        course_id2(j) = reader1("course_code")
                        j = j + 1

                    End If

                End While

                pcount = j - 1
                reader1.Close()

                'for percentage and display

                If j > 1 Then

                    'for percentage

                    k = 1
                    counter1 = 0
                    While (k <= j - 1)
                        i = 0
                        cmdstr2 = "select percentage from practical where course_code='" & course_id2(k) & "' and dept_name='" & dept & "' and sem=" & s & " and annual_year='" & ddlannualyear.SelectedValue & "'"
                        cmd2 = New SqlCommand(cmdstr2, conn)
                        reader2 = cmd2.ExecuteReader
                        t = 0
                        While (reader2.Read)

                            t = t + reader2("percentage")
                            '  MsgBox(t)
                            Me.i = Me.i + 1

                        End While
                        per(k) = t / Me.i
                        counter1 = Math.Max(Me.i, counter1)
                        ' MsgBox(per(k))
                        reader2.Close()
                        k = k + 1
                    End While
                    count = k
                    k = k - 1

                    For Me.i = 1 To k
                        For Me.j = (Me.i + 1) To k

                            If per(Me.i) < per(j) Then
                                swap(course2(Me.i), course2(j))
                                swap(course_id2(Me.i), course_id2(j))
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
                    thead1.Cells(2).Text = "Course Code"
                    thead1.Cells(3).Text = "Courses"
                    thead1.Cells(4).Text = "Staff Index"

                    tbprac(s) = New Table
                    tbprac(s).Caption = String.Concat("Practical :", l1.Text, "   ", degree, "        ", "(", "Total Students : ", counter1, ")")
                    tbprac(s).BorderColor = Drawing.Color.Gray
                    tbprac(s).BorderWidth = 3
                    tbprac(s).BorderStyle = BorderStyle.Groove
                    tbprac(s).CellPadding = 10
                    tbprac(s).CellSpacing = 2
                    tbprac(s).GridLines = GridLines.Both
                    tbprac(s).HorizontalAlign = HorizontalAlign.Center
                    thead1.BackColor = Drawing.Color.LightGray
                    tbprac(s).Rows.Add(thead1)



                    For Me.c = 1 To (count - 1)
                        Dim trow1 As New TableRow

                        trow1.HorizontalAlign = HorizontalAlign.Center

                        trow1.Cells.Add(New TableCell())
                        trow1.Cells.Add(New TableCell())
                        trow1.Cells.Add(New TableCell())
                        trow1.Cells.Add(New TableCell())
                        trow1.Cells.Add(New TableCell())

                        trow1.Cells(0).Text = c
                        trow1.Cells(1).Text = ddlstaff.SelectedValue
                        trow1.Cells(2).Text = f1.code(course_id2(c))
                        trow1.Cells(3).Text = course2(c)
                        trow1.Cells(4).Text = String.Concat(Math.Round(per(c), 2), "%")
                        tbprac(s).Rows.Add(trow1)
                        form1.Controls.Add(tbprac(s))


                    Next
                End If
                s = s + 2
            End While
            n = n + 1
        End While

        'code for theory question tables


        tcount = 0

        If semcount = 1 Then
            cmdstr = "select course_code from staff_theory where dept_name='" & dept & "' and staff_name='" & ddlstaff.SelectedValue & "' and (sem=1 or sem=3 or sem=5 or sem=7) and annual_year='" & ddlannualyear.SelectedValue & "'"
        Else
            cmdstr = "select course_code from staff_theory where dept_name='" & dept & "' and staff_name='" & ddlstaff.SelectedValue & "' and (sem=2 or sem=4 or sem=6 or sem=8) and annual_year='" & ddlannualyear.SelectedValue & "'"
        End If

        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader

        While (reader.Read())

            If f1.iselective(reader("course_code")) Then

                chkelective = f1.checkelectiveresponse(reader("course_code"), dept, ddlannualyear.SelectedValue, "t")

                If chkelective = 1 Then
                    tcount = tcount + 1
                    course_id1(tcount) = reader("course_code")
                End If

            Else
                tcount = tcount + 1
                course_id1(tcount) = reader("course_code")
            End If

        End While
        reader.Close()


        If tcount > 0 Then

            cmdstr1 = "select question_name from question_info where question_type='theory'"
            cmd1 = New SqlCommand(cmdstr1, conn)
            reader1 = cmd1.ExecuteReader

            Dim tbthques As New Table
            tbthques.Caption = "Theory Responses"
            tbthques.BorderColor = Drawing.Color.Gray
            tbthques.BorderWidth = 3
            tbthques.BorderStyle = BorderStyle.Groove
            tbthques.CellPadding = 10
            tbthques.CellSpacing = 2
            tbthques.GridLines = GridLines.Both
            tbthques.HorizontalAlign = HorizontalAlign.Center

            quescount = 0
            While (reader1.Read())
                quescount = quescount + 1
                ques(quescount) = reader1("question_name")
            End While
            reader1.Close()


            j = 1
            While (j <= quescount)
                If j = 1 Then

                    Dim trowh As New TableRow
                    trowh.Cells.Add(New TableCell())
                    trowh.Cells.Add(New TableCell())
                    trowh.Cells(0).Text = "Sr. No."
                    trowh.Cells(1).Text = "Questions"

                    k = 2
                    For Me.i = 1 To tcount
                        trowh.Cells.Add(New TableCell())
                        trowh.Cells(k).Text = f1.code(course_id1(i))
                        k = k + 1
                    Next
                    tbthques.Rows.Add(trowh)

                End If

                Dim trow3 As New TableRow
                trow3.Cells.Add(New TableCell())
                trow3.Cells.Add(New TableCell())

                trow3.Cells(0).Text = j
                trow3.Cells(1).Text = Convert.ToString(ques(j))

                k = 2

                studrespcount = 0

                For Me.i = 1 To tcount
                    studrespcount = 0
                    total = 0
                    trow3.Cells.Add(New TableCell())

                    cmdstr = "select stud_response from theory where dept_name='" & dept & "' and course_code='" & course_id1(i) & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                    cmd1 = New SqlCommand(cmdstr, conn)
                    reader3 = cmd1.ExecuteReader


                    While (reader3.Read())

                        t11 = Split(reader3("stud_response"), "#")
                        total = Convert.ToDouble(total + Convert.ToDouble(t11(j - 1)))
                        studrespcount = studrespcount + 1

                    End While

                    reader3.Close()

                    trow3.Cells(k).Text = String.Concat(Math.Round(((total * 100) / (studrespcount * 5)), 2), "%")
                    k = k + 1
                Next

                tbthques.Rows.Add(trow3)
                j = j + 1

            End While

            form1.Controls.Add(tbthques)

        End If

        'end of theory question code



        'code for practical question tables
        pcount = 0
        If semcount = 1 Then
            cmdstr = "select course_code from staff_practical where dept_name='" & dept & "' and staff_name='" & ddlstaff.SelectedValue & "' and (sem=1 or sem=3 or sem=5 or sem=7) and annual_year='" & ddlannualyear.SelectedValue & "'"
        Else
            cmdstr = "select course_code from staff_practical where dept_name='" & dept & "' and staff_name='" & ddlstaff.SelectedValue & "' and (sem=2 or sem=4 or sem=6 or sem=8) and annual_year='" & ddlannualyear.SelectedValue & "'"
        End If

        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader

        While (reader.Read())

            If f1.iselective(reader("course_code")) Then

                chkelective = f1.checkelectiveresponse(reader("course_code"), dept, ddlannualyear.SelectedValue, "p")

                If chkelective = 1 Then
                    pcount = pcount + 1
                    course_id2(pcount) = reader("course_code")
                End If

            Else
                pcount = pcount + 1
                course_id2(pcount) = reader("course_code")
            End If

        End While
        reader.Close()


        If pcount > 0 Then

            cmdstr1 = "select question_name from question_info where question_type='practical'"
            cmd1 = New SqlCommand(cmdstr1, conn)
            reader1 = cmd1.ExecuteReader

            Dim tbprques As New Table
            tbprques.Caption = "Practical Responses"
            tbprques.BorderColor = Drawing.Color.Gray
            tbprques.BorderWidth = 3
            tbprques.BorderStyle = BorderStyle.Groove
            tbprques.CellPadding = 10
            tbprques.CellSpacing = 2
            tbprques.GridLines = GridLines.Both
            tbprques.HorizontalAlign = HorizontalAlign.Center


            quescount = 0
            While (reader1.Read())
                quescount = quescount + 1
                ques(quescount) = reader1("question_name")
            End While
            reader1.Close()


            j = 1
            While (j <= quescount)
                If j = 1 Then

                    Dim trowh As New TableRow
                    trowh.Cells.Add(New TableCell())
                    trowh.Cells.Add(New TableCell())
                    trowh.Cells(0).Text = "Sr. No."
                    trowh.Cells(1).Text = "Questions"

                    k = 2
                    For Me.i = 1 To pcount
                        trowh.Cells.Add(New TableCell())
                        trowh.Cells(k).Text = f1.code(course_id2(i))
                        k = k + 1
                    Next
                    tbprques.Rows.Add(trowh)

                End If

                Dim trow3 As New TableRow
                trow3.Cells.Add(New TableCell())
                trow3.Cells.Add(New TableCell())

                trow3.Cells(0).Text = j
                trow3.Cells(1).Text = Convert.ToString(ques(j))

                k = 2

                studrespcount = 0
                For Me.i = 1 To pcount
                    studrespcount = 0
                    total = 0
                    trow3.Cells.Add(New TableCell())

                    cmdstr = "select stud_response from practical where dept_name='" & dept & "' and course_code='" & course_id2(i) & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
                    cmd1 = New SqlCommand(cmdstr, conn)
                    reader3 = cmd1.ExecuteReader


                    While (reader3.Read())
                        t11 = Split(reader3("stud_response"), "#")
                        total = Convert.ToDouble(total + Convert.ToDouble(t11(j - 1)))
                        studrespcount = studrespcount + 1
                    End While

                    reader3.Close()

                    trow3.Cells(k).Text = String.Concat(Math.Round(((total * 100) / (studrespcount * 5)), 2), "%")
                    k = k + 1
                Next

                tbprques.Rows.Add(trow3)
                j = j + 1

            End While

            form1.Controls.Add(tbprques)

        End If

        'end of practical question code

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

        ddlstaff.Items.Clear()
        'Staff names
        ddlstaff.Items.Add("Select Staff")
        conn.Open()
        cmdstr1 = "select distinct staff_name from staff_theory where dept_name='" & dept & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
        cmd1 = New SqlCommand(cmdstr1, conn)
        reader1 = cmd1.ExecuteReader

        Me.i = 0
        While (reader1.Read)

                i = i + 1
                staffname(i) = reader1("staff_name")
                ddlstaff.Items.Add(reader1("staff_name"))

        End While
        reader1.Close()
        conn.Close()


        conn.Open()
        cmdstr1 = "select distinct staff_name from staff_practical where dept_name='" & dept & "' and annual_year='" & ddlannualyear.SelectedValue & "'"
        cmd1 = New SqlCommand(cmdstr1, conn)
        reader1 = cmd1.ExecuteReader

        While (reader1.Read)
            flag = 0

            If i > 0 Then
                For Me.j = 1 To i
                    If staffname(j) = reader1("staff_name") Then
                        flag = 1
                    End If
                Next
            End If

            If flag = 0 Then
                i = i + 1
                staffname(i) = reader1("staff_name")
                ddlstaff.Items.Add(reader1("staff_name"))
            End If

        End While
        reader1.Close()
        conn.Close()

    End Sub
End Class
