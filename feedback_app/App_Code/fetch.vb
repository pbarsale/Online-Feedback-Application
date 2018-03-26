Imports Microsoft.VisualBasic
Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data

Public Class fetch
    Public Function code(ByVal oldcode As String) As String
        Dim t11(5) As String
        t11 = Split(oldcode, "#")
        Return t11(0)

    End Function

    Public Function checkelectiveresponse(ByVal id As String, ByVal dept As String, ByVal annualyear As String, ByVal type As String) As Integer

        Dim conn As SqlConnection
        Dim constr As String
        Dim reader As SqlDataReader
        Dim cmd As SqlCommand
        Dim cmdstr As String


        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()

        If type = "t" Then
            cmdstr = "select percentage from theory where course_code='" & id & "' and dept_name='" & dept & "' and annual_year='" & annualyear & "'"
        Else
            cmdstr = "select percentage from practical where course_code='" & id & "' and dept_name='" & dept & "' and annual_year='" & annualyear & "'"
        End If

        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        If reader.Read() Then

            reader.Close()
            conn.Close()
            Return 1

        End If

        reader.Close()
        conn.Close()
        Return 0

    End Function

    Public Function iselective(ByVal id As String) As Integer
        Dim conn As SqlConnection
        Dim constr As String
        Dim reader As SqlDataReader
        Dim cmd As SqlCommand
        Dim cmdstr As String


        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)
        conn.Open()

        cmdstr = "select iselective from course_info where course_code='" & id & "'"
        cmd = New SqlCommand(cmdstr, conn)
        reader = cmd.ExecuteReader()

        If reader.Read() Then
            If reader("iselective") = 1 Then
                reader.Close()
                conn.Close()
                Return 1
            Else
                reader.Close()
                conn.Close()
                Return 0
            End If

        End If

        reader.Close()
        conn.Close()
        Return 0

    End Function

    Public Function checkexcel(ByVal dtexcel As DataTable, ByVal dept As String) As Integer

        Dim i, compelective, comptype, compdept, flag, count As Integer
        Dim code, elective, type, course(50) As String
        flag = 0
        count = 0

        For i = 0 To (dtexcel.Rows.Count - 1)

            compelective = 0
            comptype = 0
            compdept = 0
            code = Convert.ToString(dtexcel.Rows(i)(0)).ToUpper
            elective = Convert.ToString(dtexcel.Rows(i)(2)).ToLower
            type = Convert.ToString(dtexcel.Rows(i)(4)).ToLower

            If String.Compare(elective, "y") = 0 Or String.Compare(elective, "n") = 0 Then
                compelective = 1
            End If

            If String.Compare(type, "t") = 0 Or String.Compare(type, "p") = 0 Then
                comptype = 1
            End If

            If dept <> "MCA" Then
                If String.Compare(code.Substring(0, 2), dept) = 0 Then
                    compdept = 1
                End If
            Else
                If String.Compare(code.Substring(0, 3), dept) = 0 Then
                    compdept = 1
                End If
            End If
            

            If compelective And comptype And compdept Then
                flag = 1
                count = count + 1
                course(count) = code
            Else
                flag = 0
                Exit For
            End If

        Next


        If flag Then

            For i = 1 To (count - 1)
                For j = (i + 1) To count
                    If String.Compare(course(i), course(j)) = 0 Then
                        flag = 0
                    End If
                Next
            Next

            Return flag

        End If

        Return flag
    End Function

End Class
