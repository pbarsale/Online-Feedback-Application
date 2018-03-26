<%@ Page Language="VB" AutoEventWireup="false" CodeFile="general.aspx.vb" Inherits="general" Title="Course Info"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 2px;
            width: 9px;
        }
     * {
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
	
	width:1220px;
	height:56px;
	z-index:3;
	left: 102px;
	top: 129px;
            margin-top: 0px;
        }
    </style>
    
    
    
<script src="SpryAssets/SpryMenuBar.js" type="text/javascript"></script>
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
<style type="text/css">
    <!--
#apDiv13 {
	position:absolute;
	width:907px;
	height:272px;
	z-index:4;
	left: 102px;
	top: 551px;
        margin-top: 0px;
    }
#apDiv14 {
	position:absolute;
	width:316px;
	height:63px;
	z-index:5;
	left: 102px;
	top: 853px;
}
#apDiv15 {
	position:absolute;
	width:598px;
	height:235px;
	z-index:6;
	left: 298px;
	top: 294px;
}
    #form2
    {
        height: 25px;
    }
    .style3
    {
        width: 585px;
        height: 38px;
    }
    .style4
    {
        width: 557px;
        height: 38px;
    }
    .style5
    {
        width: 585px;
        height: 28px;
    }
    .style6
    {
        width: 557px;
        height: 28px;
    }
    .style7
    {
        width: 585px;
        height: 31px;
    }
    .style8
    {
        width: 557px;
        height: 31px;
    }
    .style9
    {
        width: 585px;
        height: 32px;
    }
    .style10
    {
        width: 557px;
        height: 32px;
    }
    .listing
    {}
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
      <li><a href="general.aspx" shape="circle" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666">Courses&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; |</a>      </li>
       <li><a href="questions.aspx" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666">Questions&nbsp;&nbsp;&nbsp; | </a></li>
      <li><a href="general_acc.aspx" shape="circle" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666">Change Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a>      </li>
    <li><a href="login.aspx" shape="circle" style="font-size: medium; font-weight: bold; color: #FFFFFF; background-color: #666666">Logout&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a>      </li>
       </ul>
  </div>
  <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Label ID="Label8" runat="server" Text="General Account"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
     
  <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
      <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" 
          ForeColor="Red"></asp:Label>
      </p>
  <div id="apDiv13">
        <asp:GridView ID="GridView1" CssClass="listing" runat="server" AutoGenerateColumns="False" 
      DataKeyNames="course_code" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand" 
      OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" 
            Caption="Courses" CaptionAlign="Top" Height="16px" Width="908px" 
            CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
          <columns>
            <%-- <asp:BoundField DataField="course_code" HeaderText="userID" InsertVisible="False" ReadOnly="True" SortExpression="userID" />
                    <asp:BoundField DataField="course_name" HeaderText="fullName" SortExpression="fullName" />
                    <asp:BoundField DataField="sys_date" HeaderText="emailAddress" SortExpression="emailAddress" />
                    <asp:BoundField DataField="dept_name" HeaderText="userPassword" SortExpression="userPassword" />--%>
            <asp:BoundField DataField="course_code" HeaderText="course code" SortExpression="course_code" ReadOnly="true" />
            <asp:BoundField DataField="course_name" HeaderText="course name" SortExpression="course_name" />
            <asp:BoundField DataField="sys_date" HeaderText="system date" SortExpression="sys_date" />
            <asp:BoundField DataField="dept_name" HeaderText="Department" SortExpression="dept_name" />
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
      </div>
      <br />
      <br />
      <br />

  <div id="apDiv14">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="<%$ ConnectionStrings:feedbackConnectionString %>"
                SelectCommand="SELECT course_code,course_name,sys_date,dept_name,degree FROM course_info where dept_name=@dept_name">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="dept_name" SessionField="dept" />
        </SelectParameters>
      </asp:SqlDataSource>
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
      <br />
  </div>
<div id="apDiv15">
  <table height="200" border="1" style="width: 599px">
    <tr>
      <td class="style5">
          <asp:Label ID="Label1" runat="server" Text="Course Code"></asp:Label>
        </td>
      <td class="style6">
          <asp:TextBox ID="txtcode" runat="server" Height="22px" ReadOnly="True" 
              Width="206px"></asp:TextBox>
        </td>
    </tr>
    <tr> 
      <td class="style7">
          <asp:Label ID="Label2" runat="server" Text="System date"></asp:Label>
        </td>
      <td class="style8">
          <asp:TextBox ID="txtdate" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td class="style9">
          <asp:Label ID="Label3" runat="server" Text="Department"></asp:Label>
        </td>
      <td class="style10">
          <asp:TextBox ID="txtdept" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
        </td>
    </tr>


    <tr>
      <td class="style9">
          <asp:Label ID="Label7" runat="server" Text="Degree"></asp:Label>
        </td>
      <td class="style10">
          <asp:DropDownList ID="ddldegree" runat="server" Width="81px" Enabled="False">
              <asp:ListItem Selected="True">UG</asp:ListItem>
              <asp:ListItem>PG</asp:ListItem>
          </asp:DropDownList>
        </td>
    </tr>


    <tr>
      <td class="style9">
          <asp:Label ID="Label4" runat="server" Text="Course Name"></asp:Label>
        </td>
      <td class="style10">
          <asp:TextBox ID="txtname" runat="server" ReadOnly="True" Width="205px"></asp:TextBox>
        </td>
    </tr>

      <tr>
      <td class="style3"></td>
      <td class="style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;<asp:Button ID="btnadd" runat="server" Text="Add Course" 
              Width="99px" />
          &nbsp;&nbsp;&nbsp;<asp:Button 
              ID="btnupdate" runat="server" Text="Update" Width="82px" Enabled="False" 
              style="margin-left: 7px"  />
          &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btncancle" runat="server" 
              style="margin-left: 0px" Text="Cancel" Width="70px" Enabled="False" />
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
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp;</p>
<p>&nbsp;</p>
</body>
</html>




