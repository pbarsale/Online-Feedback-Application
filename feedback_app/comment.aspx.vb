Imports System.Data.SqlClient
Imports System.Data.Sql
Imports System.Data

Partial Class comment
    Inherits System.Web.UI.Page

    Dim conn As SqlConnection
    Dim constr As String
    Dim reader As SqlDataReader
    Dim cmd As SqlCommand
    Dim cmdstr As String
   


    Dim dept, str As String


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("admin") = "" Then
            Response.Redirect("login.aspx")
        End If

        constr = ConfigurationManager.ConnectionStrings("feedbackConnectionString").ConnectionString.ToString()
        conn = New SqlConnection(constr)


        If Not IsPostBack Then
            conn.Open()
            cmdstr = "select distinct annual_year from comments"
            cmd = New SqlCommand(cmdstr, conn)
            reader = cmd.ExecuteReader

            ddlannualyear.Items.Add("None")
            While (reader.Read)
                ddlannualyear.Items.Add(reader("annual_year"))
            End While
            reader.Close()
            conn.Close()
        End If

        dept = Session("dept")

        If dept = "CS" Then
            lbldept.Text = " Computer Science and Enginnering Department "
        ElseIf dept = "IT" Then
            lbldept.Text = " Information Technology Department"
        ElseIf dept = "CE" Then
            lbldept.Text = "Civil Enginnering Department"
        ElseIf dept = "ME" Then
            lbldept.Text = "Mechanical Enginnering Department"
        ElseIf dept = "EE" Then
            lbldept.Text = "Electrical Enginnering Department"
        ElseIf dept = "EC" Then
            lbldept.Text = "Electronics and Telecommunication Enginnering Department "
        ElseIf dept = "MCA" Then
            lbldept.Text = "Master Of Computer Application "
        End If


    End Sub

    Protected Sub ddlannualyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlannualyear.SelectedIndexChanged

        SqlDataSource1.SelectCommand = "select comment from comments where annual_year='" & ddlannualyear.SelectedValue & "' and annual_sem=" & ddlsem.SelectedValue & " and dept_name='" & Session("dept") & "'"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)


    End Sub

    Protected Sub ddlsem_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ddlsem.SelectedIndexChanged

        SqlDataSource1.SelectCommand = "select comment from comments where annual_year='" & ddlannualyear.SelectedValue & "' and annual_sem=" & ddlsem.SelectedValue & " and dept_name='" & Session("dept") & "'"
        SqlDataSource1.Select(DataSourceSelectArguments.Empty)



    End Sub
End Class
