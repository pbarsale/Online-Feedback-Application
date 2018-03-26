<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admin.aspx.vb" Inherits="admin" Title="Course Info"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
          #form1 {
            height: 2px;
            width: 9px;
        }
        *
        {
            margin:0px;
            padding:0px;
         }
    #apDiv10 {
	position:absolute;
	width:1220px;
	height:24px;
	z-index:2;
	left: 3px;
	top: 109px;
	background-color: #CCCCCC;
}
    #apDiv1 {	position:absolute;
	width:1220px;
	height:111px;
	z-index:1;
	left: 2px;
	top: -1px;
}
#apDiv9 {	
	width:449px;
	height:54px;
	z-index:1;
	left: 224px;
	top: 37px;
	text-align:center;
}
    #apDiv2 {
	position:absolute;
	width:835px;
	height:168px;
	z-index:3;
	left: 98px;
	top: 596px;
	margin-top: 0px;
        }
    #apDiv3 {
	position:absolute;
	width:834px;
	height:61px;
	z-index:4;
	left: 100px;
	top: 153px;
	background-color: #999999;
}
    #apDiv4 {
	position:absolute;
	width:834px;
	height:128px;
	z-index:5;
	left: 100px;
	top: 234px;
            bottom: 390px;
        }
        #apDiv5 {
	position:absolute;
	width:472px;
	height:169px;
	z-index:6;
	left: 100px;
	top: 420px;
	margin-top: 0px;
        }
    #apDiv6 {
	position:absolute;
	width:426px;
	height:26px;
	z-index:7;
	left: 320px;
	top: 608px;
}
    #apDiv7 {
	position:absolute;
	width:91px;
	height:30px;
	z-index:8;
	left: 449px;
	top: 1562px;
}
        #apDiv8 {
	position:absolute;
	width:91px;
	height:41px;
	z-index:7;
	left: 300px;
	top: 646px;
}
    #apDiv11 {
	position:absolute;
	width:300px;
	height:387px;
	z-index:8;
	left: 652px;
	top: 420px;
	background-color: #E6E6E6;
}
    #apDiv12 {
	position:absolute;
	width:1211px;
	height:53px;
	z-index:3;
	left: 14px;
	top: 120px;
}
    </style>
    
    
    
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    <!--
#apDiv13 {
	position:absolute;
	width:792px;
	height:377px;
	z-index:4;
	left: 46px;
	top: 663px;
}
#apDiv14 {
	position:absolute;
	width:184px;
	height:29px;
	z-index:5;
	left: 58px;
	top: 813px;
}
#apDiv15 {
	position:absolute;
	width:606px;
	height:298px;
	z-index:6;
	left: 325px;
	top: 286px;
}
    .listing
    {}
    #apDiv16 {
	position:absolute;
	width:779px;
	height:215px;
	z-index:7;
	left: 46px;
	top: 886px;
        right: 67px;
    }
#apDiv17 {
	position:absolute;
	width:189px;
	height:32px;
	z-index:8;
	left: 53px;
	top: 1136px;
}
    .style5
    {
        width: 272px;
        height: 29px;
    }
    .style6
    {
        height: 29px;
    }
    .style8
    {
        width: 439px;
        height: 28px;
    }
    .style9
    {
        width: 272px;
        height: 63px;
    }
    .style11
    {
        width: 310px;
        height: 28px;
    }
    .style13
    {
        height: 28px;
    }
    .style14
    {
        height: 63px;
    }
    .style15
    {
        width: 272px;
        height: 28px;
    }
-->
</style>
<script type = "text/javascript" >

    function preventBack() { window.history.forward(); }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };

</script>


</head>
<body style="height: 1px">
<form id="form2" runat="server">
  
    <%-- <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <table>
                <tr>
                    <td>
                        Semester
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Grade
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td>
                    
             </td>
                <td><asp:Button ID="btnNext" runat="server" Text="Next" /></td>
                </tr>
            </table>
        </asp:View>--%><%-- <asp:View ID="View2" runat="server">--%>
 <div id="apDiv1" 
          style="background-color: #506A92; font-style: normal; color: #FFFFFF; font-family: Georgia; font-weight: 100; font-size: 38px;" 
          align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <div id="apDiv9" align="center">
        <label>Feedback Form </label>
      </div>
    </div>

    

    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div id="apDiv10"></div>
  <div id="apDiv12" align="center">
    <ul id="MenuBar1" class="MenuBarHorizontal">
      <li><a href="admin.aspx" shape="circle" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666">Courses&nbsp;&nbsp;&nbsp;|</a></li>
      <li><a href="staff.aspx" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666">Staff&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |</a></li>
     
     <li><a href="report.aspx" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666"> Report&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | </a></li>
     <li><a href="comment.aspx" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666"> Comment&nbsp; | </a></li>
      <li><a href="#" class="MenuBarItemSubmenu" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666"> &nbsp; Account</a>
        <ul>
          <li><a href="account.aspx" style="font-size: small; font-weight: bold; color: #FFFFFF; background-color: #666666">Change Password</a></li>
          <li><a href="login.aspx" style="font-size: small; font-weight: bold; color: #FFFFFF; background-color: #666666">Logout</a></li>
        </ul>
      </li>
    </ul>
  </div>
  <br />
<br />
    <%-- </asp:View>
        <asp:View ID="thnKU">
        
        </asp:View>
    </asp:MultiView>--%>
<script type="text/javascript">
<!--
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"SpryAssets/SpryMenuBarDownHover.gif", imgRight:"SpryAssets/SpryMenuBarRightHover.gif"});
//-->
</script>
     
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </p>
      
      &nbsp;&nbsp;
      
      <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
      <asp:Button ID="btnflush" runat="server" Height="31px" Text="Import File" 
          Width="97px" />
    &nbsp;<br />
    <br />
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label9" runat="server" Text="Select Year :"></asp:Label>
&nbsp;
<asp:DropDownList ID="ddlannualyear" runat="server" AutoPostBack="True" 
        Height="20px">
</asp:DropDownList> 
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Course Information"></asp:Label>
     
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" 
        ForeColor="Red" ></asp:Label>
     
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <br />
      <br />
      <br />
      <br />

  
<div id="apDiv15">
  <table height="200" border="1" style="width: 599px">
    <tr>
      <td class="style5">
          <asp:Label ID="Label1" runat="server" Text="Course Code"></asp:Label>
        </td>
      <td class="style6">
          &nbsp;&nbsp;
          <asp:TextBox ID="txtcode" runat="server" Height="24px" ReadOnly="True" 
              Width="206px"></asp:TextBox>
        </td>
    </tr>
    <tr> 
      <td class="style15">
          <asp:Label ID="Label2" runat="server" Text="System date"></asp:Label>
        </td>
      <td class="style8">
          &nbsp;&nbsp;
          <asp:TextBox ID="txtdate" Height="24px" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td class="style15">
          <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
        </td>
      <td class="style11">
          &nbsp;&nbsp;
          <asp:TextBox ID="txtdept" Height="24px" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
        </td>
    </tr>
     <tr>
      <td class="style15">
          <asp:Label ID="Label7" runat="server" Text="Degree"></asp:Label>
        </td>
      <td class="style11">
          &nbsp;&nbsp;
          <asp:DropDownList ID="ddldegree" runat="server" Width="81px" Height="24px" Enabled="False" 
              AutoPostBack="True">
          </asp:DropDownList>
        </td>
    </tr>
    <tr>
      <td class="style15">
          <asp:Label ID="Label4" runat="server" Text="Course Name"></asp:Label>
        </td>
      <td class="style11">
          &nbsp;&nbsp;
          <asp:TextBox ID="txtname" Height="24px" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
        </td>
    </tr>

     <tr>
      <td class="style15">
          <asp:Label ID="Label5" runat="server" Text="Year"></asp:Label>
        </td>
      <td class="style11">
          &nbsp;&nbsp;
          <asp:DropDownList ID="ddlyear" Height="24px" runat="server" Enabled="False">
          </asp:DropDownList>
        </td>
    </tr>


     <tr>
      <td class="style15">
          <asp:Label ID="Label6" runat="server" Text="Semester"></asp:Label>
        </td>
      <td class="style13">
          &nbsp;&nbsp;
          <asp:DropDownList ID="ddlsem" Height="24px" runat="server" Enabled="False">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
          </asp:DropDownList>
        </td>
    </tr>
    <tr>
      <td class="style9"></td>
      <td class="style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
              ID="btnupdate" runat="server" Text="Update" Width="82px" Enabled="False" 
              style="margin-left: 7px" Height="30px"  />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="btncancle" runat="server" 
              style="margin-left: 0px" Text="Cancel" Width="82px" Enabled="False" 
              Height="30px" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
    </tr>
  </table>
</div>


<p>&nbsp;</p>
<p>&nbsp;</p>
    
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    
  

  <asp:Table ID="tablesubmit" runat="server"  
        CellPadding="5" CellSpacing="2"  
        Height="31px" HorizontalAlign="Center" Width="1063px" 
        style="margin-top: 3px" borderWidth="0px">

            <asp:TableRow HorizontalAlign="Center">
            
            <asp:TableCell>


        <asp:GridView ID="GridView1" CssClass="listing" 
      BorderStyle="Solid" runat="server" AutoGenerateColumns="False" 
      DataKeyNames="course_code" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" 
      OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" 
            Caption="Theory Courses" CaptionAlign="Top" Height="237px" Width="959px" 
            CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <columns>
            <%-- <asp:BoundField DataField="course_code" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                    <asp:BoundField DataField="course_name" HeaderText="fullName" SortExpression="fullName" />
                    <asp:BoundField DataField="sys_date" HeaderText="emailAddress" SortExpression="emailAddress" />
                    <asp:BoundField DataField="dept_name" HeaderText="userPassword" SortExpression="userPassword" />--%>
            
            <asp:BoundField DataField="ccode" HeaderText="course code" SortExpression="ccode" ReadOnly="true" />
            <asp:BoundField DataField="course_name" HeaderText="course name" SortExpression="course_name" />
            <asp:BoundField DataField="sys_date" HeaderText="system date" SortExpression="sys_date" />
            <asp:BoundField DataField="dept_name" HeaderText="Department" SortExpression="dept_name" />
            <asp:BoundField DataField="sem" HeaderText="Semester" SortExpression="sem" />
             <asp:BoundField DataField="degree" HeaderText="Degree" SortExpression="degree" />
            <asp:TemplateField>
              <ItemTemplate >
                <asp:Button ID="btnEdit" runat="server" CommandName="EditR" Text="Edit" 
                      CommandArgument='<%# Eval("course_code") %>' />        
                <asp:Button ID="btnDelete" runat="server" CommandName="DeleteR" Text="Delete" 
                      CommandArgument='<%# Eval("course_code") %>' />        
                <%-- <asp:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender" runat="server" ConfirmText="Are you sure, you want to proceed?"
                                Enabled="True" TargetControlID="btnDelete">
                            </asp:ConfirmButtonExtender>--%>
              </ItemTemplate>
            </asp:TemplateField>
          </columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="<%$ ConnectionStrings:feedbackConnectionString %>"
               >
       
      </asp:SqlDataSource>
         </asp:TableCell>
                        
            </asp:TableRow>

             <asp:TableRow HorizontalAlign="Center">
            
            <asp:TableCell>
          
               <asp:GridView ID="GridView2" CssClass="listing" 
      BorderStyle="Solid" runat="server" AutoGenerateColumns="False" 
      DataKeyNames="course_code" DataSourceID="SqlDataSource2" OnRowCommand="GridView2_RowCommand" 
      OnRowDeleting="GridView2_RowDeleting" OnRowUpdating="GridView2_RowUpdating" 
            Caption="Practical Courses" CaptionAlign="Top" Height="237px" Width="959px" 
            CellPadding="4" ForeColor="#333333">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <columns>
            <%-- <asp:BoundField DataField="course_code" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                    <asp:BoundField DataField="course_name" HeaderText="fullName" SortExpression="fullName" />
                    <asp:BoundField DataField="sys_date" HeaderText="emailAddress" SortExpression="emailAddress" />
                    <asp:BoundField DataField="dept_name" HeaderText="userPassword" SortExpression="userPassword" />--%>
            
            <asp:BoundField DataField="ccode" HeaderText="course code" SortExpression="ccode" ReadOnly="true" />
            <asp:BoundField DataField="course_name" HeaderText="course name" SortExpression="course_name" />
            <asp:BoundField DataField="sys_date" HeaderText="system date" SortExpression="sys_date" />
            <asp:BoundField DataField="dept_name" HeaderText="Department" SortExpression="dept_name" />
            <asp:BoundField DataField="sem" HeaderText="Semester" SortExpression="sem" />
             <asp:BoundField DataField="degree" HeaderText="Degree" SortExpression="degree" />
            <asp:TemplateField>
              <ItemTemplate >
                <asp:Button ID="btnEdit" runat="server" CommandName="EditR" Text="Edit" 
                      CommandArgument='<%# Eval("course_code") %>' />        
                <asp:Button ID="btnDelete" runat="server" CommandName="DeleteR" Text="Delete" 
                      CommandArgument='<%# Eval("course_code") %>' />        
                <%-- <asp:ConfirmButtonExtender ID="btnDelete_ConfirmButtonExtender" runat="server" ConfirmText="Are you sure, you want to proceed?"
                                Enabled="True" TargetControlID="btnDelete">
                            </asp:ConfirmButtonExtender>--%>
              </ItemTemplate>
            </asp:TemplateField>
          </columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
      ConnectionString="<%$ ConnectionStrings:feedbackConnectionString %>"
               >
             </asp:SqlDataSource>

             </asp:TableCell>
                        
            </asp:TableRow>


            </asp:Table>


  


</form>
</body>
</html>




