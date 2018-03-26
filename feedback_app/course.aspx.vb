Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Data.OleDb
Imports System.IO

Partial Class course
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim cmd, cmd2 As SqlCommand
    Dim count, excelcounter As Integer
    Dim f1 As New fetch
    Dim semester As Integer
    Dim cmdstr, cmdstr2, constr As String
    Dim reader As SqlDataReader
    Dim excourse_code, ccode, excourse_name, exiselective, exstaff_name, excourse_type As String
    Dim sheet As String = "Sheet1$"

    Protected Sub btnimport_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnimport.Click


        If FileUpload1.FileName = "" Or txtyear.Text = "" Then
            lblmsg.Text = "Please fill all the fields"
        ElseIf txtyear.Text.Length <> 7 Or txtyear.Text.Substring(4, 1) <> "-" Then
            lblmsg.Text = "Please follow the given year format"

        ElseIf System.IO.Path.GetExtension(FileUpload1.PostedFile.FileName) <> ".xlsx" Then
            lblmsg.Text = "Please import only Excel files"
        Else
            Session("degree") = ddldegree.SelectedValue

            If Session("dept") = "MCA" Then
                If ddlsem.SelectedValue = "1" Then

                    If ddlyear.SelectedValue = "FY" Then
                        semester = 1
                    ElseIf ddlyear.SelectedValue = "SY" Then
                        semester = 3
                    ElseIf ddlyear.SelectedValue = "TY" Then
                        semester = 5
                    End If
                Else

                    If ddlyear.SelectedValue = "FY" Then
                        semester = 2
                    ElseIf ddlyear.SelectedValue = "SY" Then
                        semester = 4
                    ElseIf ddlyear.SelectedValue = "TY" Then
                        semester = 6
                    End If
                End If

            Else

                If ddlsem.SelectedValue = "1" Then

                    If ddlyear.SelectedValue = "FE" Then
                        semester = 1
                    ElseIf ddlyear.SelectedValue = "SE" Then
                        semester = 3
                    ElseIf ddlyear.SelectedValue = "TE" Then
                        semester = 5
                    ElseIf ddlyear.SelectedValue = "BE" Then
                        semester = 7
                    End If

                Else

                    If ddlyear.SelectedValue = "FE" Then
                        semester = 2
                    ElseIf ddlyear.SelectedValue = "SE" Then
                        semester = 4
                    ElseIf ddlyear.SelectedValue = "TE" Then
                        semester = 6
                    ElseIf ddlyear.SelectedValue = "BE" Then
                        semester = 8
                    End If

                End If

            End If

            constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
            conn = New SqlConnection(constr)

            conn.Open()
            cmdstr = "select annual_year from staff_theory where annual_year='" & txtyear.Text & "' and sem=" & semester & " and dept_name='" & Session("dept") & "'"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader()

            If (reader.Read) Then
                lblmsg.Text = "courses for this year already exist "
                reader.Close()
            Else
                reader.Close()
                Dim i, j, k, iselect As Integer
                Dim query As String
                Dim data As OleDbDataAdapter
                Dim path As String = Server.MapPath(FileUpload1.PostedFile.FileName)
                FileUpload1.SaveAs(path)
                Dim dtExcel As New DataTable()
                Dim SourceConstr As String = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source='" & path & "';Extended Properties= 'Excel 8.0;HDR=Yes;IMEX=1'"
                Dim con As OleDbConnection = New OleDbConnection(SourceConstr)

                query = "Select * from [" & sheet & "]"
                data = New OleDbDataAdapter(query, con)
                data.Fill(dtExcel)
                If f1.checkexcel(dtExcel, Session("dept")) Then
                    excelcounter = 1
                End If

                dtExcel.Reset()

                If excelcounter = 1 Then

                    query = "Select * from [" & sheet & "]"
                    data = New OleDbDataAdapter(query, con)
                    data.Fill(dtExcel)

                    For i = 0 To (dtExcel.Rows.Count - 1)
                        ccode = Convert.ToString(dtExcel.Rows(i)(0)).ToUpper
                        excourse_code = String.Concat(Convert.ToString(dtExcel.Rows(i)(0)), "#", txtyear.Text).ToUpper

                        excourse_name = Convert.ToString(dtExcel.Rows(i)(1))
                        exiselective = Convert.ToString(dtExcel.Rows(i)(2)).ToLower
                        exstaff_name = Convert.ToString(dtExcel.Rows(i)(3))
                        excourse_type = Convert.ToString(dtExcel.Rows(i)(4)).ToLower

                        If exiselective = "y" Then
                            iselect = 1
                        Else
                            iselect = 0
                        End If

                        cmdstr = "insert into course_info(course_code,course_name,sys_date,dept_name,degree,annual_year,iselective,ccode) values('" & excourse_code & "','" & excourse_name & "','" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & Session("dept") & "','" & ddldegree.SelectedValue & "','" & txtyear.Text & "'," & iselect & ",'" & ccode & "')"
                        cmd = New SqlCommand(cmdstr, conn)
                        cmd.ExecuteNonQuery()

                        If excourse_type = "t" Then
                            cmdstr2 = "insert into staff_theory(course_code,sys_date,dept_name,sem,annual_year,staff_name) values('" & excourse_code & "','" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & Session("dept") & "'," & semester & ",'" & txtyear.Text & "','" & exstaff_name & "')"
                        Else
                            cmdstr2 = "insert into staff_practical(course_code,sys_date,dept_name,sem,annual_year,staff_name) values('" & excourse_code & "','" & DateAndTime.Now.ToString("MM/dd/yyyy") & "','" & Session("dept") & "'," & semester & ",'" & txtyear.Text & "','" & exstaff_name & "')"
                        End If

                        cmd2 = New SqlCommand(cmdstr2, conn)
                        cmd2.ExecuteNonQuery()

                    Next

                    lblmsg.Text = "File is imported successfully"
                    lblmsg.ForeColor = Drawing.Color.Blue

                Else

                    lblmsg.Text = "Format of Imported Excel document is invalid..Please follow the below instructions properly"
                    lblmsg.ForeColor = Drawing.Color.Red

                End If

            End If
            conn.Close()
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("admin") = "" Then
            Response.Redirect("login.aspx")
        End If

        lblmsg.Text = ""
        lblmsg.ForeColor = Drawing.Color.Red

        If Not IsPostBack Then
            If Session("dept") = "MCA" Then
                ddldegree.SelectedValue = "PG"
                ddldegree.Enabled = False
            End If
        End If

    End Sub

    Protected Sub ddldegree_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddldegree.SelectedIndexChanged
        ddlyear.Items.Clear()

        If Session("dept") = "MCA" Then
            ddlyear.Items.Add("FY")
            ddlyear.Items.Add("SY")
            ddlyear.Items.Add("TY")

        ElseIf ddldegree.SelectedValue = "UG" Then
            ddlyear.Items.Add("FE")
            ddlyear.Items.Add("SE")
            ddlyear.Items.Add("TE")
            ddlyear.Items.Add("BE")

        Else
            ddlyear.Items.Add("FE")
            ddlyear.Items.Add("SE")
        End If
    End Sub
End Class

