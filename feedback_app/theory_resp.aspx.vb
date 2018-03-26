Imports System.Data.Sql
Imports System.Data.SqlClient
Imports DataSet1TableAdapters

Partial Class theory_resp
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim constr As String
    Dim cmd, cmd1, cmd2 As SqlCommand
    Dim reader, reader1 As SqlDataReader
    Dim reader2 As SqlDataReader
    Dim cmdstr, cmdstr1, cmdstr2 As String
    Dim subject(20) As String
    Dim sub_name(20) As String
    Dim staff(20) As String
    Dim combo(50, 50) As DropDownList
    Dim row_id As Integer
    Dim i, j As Integer
    Dim dept As String
    Dim grade As String
    Dim semester As Integer
    Dim count As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("dept") = "" Then
            Response.Redirect("login.aspx")
        End If

        lblalert.Text = ""

        grade = Session("grade")
        semester = Convert.ToInt32(Session("class"))
        dept = Session("dept")

        lbldate.Text = DateAndTime.Now.ToString("dd/MM/yyyy")
        lblclass.Text = String.Concat(dept, ", SEMESTER ", Session("class"), " - ", Session("degree"))
        lblannualyear.Text = Session("annual_year")

        Dim k, k1 As Integer

        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()

        cmdstr1 = "select s.course_code,s.staff_name,c.degree from staff_theory s,course_info c where s.dept_name='" & dept & "' and s.sem=" & semester & " and c.course_code=s.course_code and c.degree='" & Session("degree") & "' and c.iselective=0 and c.annual_year='" & Session("annual_year") & "'"
        cmd1 = New SqlCommand(cmdstr1, conn)
        reader1 = cmd1.ExecuteReader

        count = 0

        While (reader1.Read)

            subject(count + 1) = reader1("course_code")
            staff(count + 1) = reader1("staff_name")
            count = count + 1

        End While

        reader1.Close()
        cmdstr1 = "select staff_name from staff_theory  where dept_name='" & dept & "' and sem=" & semester & " and course_code='" & Session("course_code") & "' and annual_year='" & Session("annual_year") & "'"
        cmd1 = New SqlCommand(cmdstr1, conn)
        reader1 = cmd1.ExecuteReader

        If reader1.Read() Then
            subject(count + 1) = Session("course_code")
            staff(count + 1) = reader1("staff_name")
            count = count + 1
        End If
        reader1.Close()


        For Me.i = 1 To count
            cmdstr2 = "select course_name from course_info where course_code='" & subject(Me.i) & "' and annual_year='" & Session("annual_year") & "'"
            cmd2 = New SqlCommand(cmdstr2, conn)
            reader2 = cmd2.ExecuteReader()

            If reader2.Read Then
                sub_name(Me.i) = reader2("course_name")
            End If

            reader2.Close()

            Dim trow1 As New TableRow
            trow1.HorizontalAlign = HorizontalAlign.Center

            trow1.Cells.Add(New TableCell())
            trow1.Cells.Add(New TableCell())
            trow1.Cells.Add(New TableCell())

            trow1.Cells(0).Text = String.Concat("CR", Convert.ToString(i))
            trow1.Cells(1).Text = sub_name(i)
            trow1.Cells(2).Text = staff(i)
            tbcourse.Rows.Add(trow1)

        Next

        cmdstr = "select question_name from question_info where question_type='theory' order by question_id"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader

        row_id = 0
        While (reader.Read())

            If (row_id = 0) Then
                Dim trow3 As New TableRow
                trow3.HorizontalAlign = HorizontalAlign.Center
                trow3.Font.Bold = "true"

                trow3.Cells.Add(New TableCell())
                trow3.Cells.Add(New TableCell())


                trow3.Cells(1).Text = "Please respond to Items below by selecting 5/3/2/1/0"
                k1 = 2
                For Me.j = 1 To count
                    trow3.Cells.Add(New TableCell())
                    trow3.Cells(k1).Text = String.Concat("CR", Convert.ToString(j))
                    k1 = k1 + 1
                Next
                tbques.Rows.Add(trow3)
            End If


            row_id = row_id + 1
            Dim trow As TableRow = New TableRow()
       
            Dim a1(5) As Integer
            a1 = {0, 1, 2, 3, 5}

            trow.Cells.Add(New TableCell())
            trow.Cells.Add(New TableCell())

            trow.Cells(0).Text = Convert.ToString(row_id)
            trow.Cells(1).Text = reader("question_name")

            k1 = 2

            For k = 1 To count
                combo(k, row_id) = New DropDownList

                trow.Cells.Add(New TableCell())
                trow.Cells(k1).Controls.Add(combo(k, row_id))
                combo(k, row_id).Items.Add("-")
                For Me.i = 0 To 4

                    combo(k, row_id).Items.Add(a1(i))
                Next
                k1 = k1 + 1
            Next

            tbques.Rows.Add(trow)
        End While

        reader.Close()

        cmdstr = "select question_name from question_info where question_type='TH_impression'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader

        While (reader.Read())
            row_id = row_id + 1
            Dim trow As TableRow = New TableRow()

            Dim a1(6) As String
            a1 = {"E", "O", "V", "G", "S", "N"}

            trow.Cells.Add(New TableCell())
            trow.Cells.Add(New TableCell())

            trow.Cells(0).Text = Convert.ToString(row_id)
            trow.Cells(1).Text = reader("question_name")

            k1 = 2

            For k = 1 To count
                combo(k, row_id) = New DropDownList
                trow.Cells.Add(New TableCell())
                trow.Cells(k1).Controls.Add(combo(k, row_id))
                For Me.i = 0 To 5
                    combo(k, row_id).Items.Add(a1(i))
                Next
                k1 = k1 + 1
            Next

            tbques.Rows.Add(trow)
        End While

        reader.Close()
        conn.Close()


    End Sub

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Dim total, flag As Integer
        Dim percent As Double
        Dim stud_resp As String


        flag = 0
        For Me.i = 1 To count
            For Me.j = 1 To (row_id - 1)
                If combo(i, j).SelectedValue = "-" Then
                    flag = flag + 1
                End If
            Next

        Next
        If flag = 0 Then
            conn.Open()

            For Me.i = 1 To count

                stud_resp = ""
                total = 0
                For Me.j = 1 To (row_id - 1)
                    total = total + Convert.ToInt32(combo(i, j).SelectedValue)
                    stud_resp = String.Concat(stud_resp, combo(i, j).SelectedValue, "#")
                Next

                percent = (total / (5 * (j - 1))) * 100
                cmdstr = "insert into theory(course_code,stud_response,TH_impression,total,percentage,sys_date,dept_name,sem,grade,annual_year) values('" & subject(i) & "','" & stud_resp & "','" & combo(i, j).SelectedValue & "'," & total & "," & percent & ",'" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & dept & "'," & semester & ",'" & grade & "','" & Session("annual_year") & "')"
                cmd = New SqlCommand(cmdstr, conn)
                cmd.ExecuteNonQuery()

            Next
            conn.Close()
            Response.Redirect("practical_resp.aspx")

        Else

            lblalert.ForeColor = Drawing.Color.Red
            lblalert.Text = "Please select all the fields"

        End If

    End Sub



End Class
