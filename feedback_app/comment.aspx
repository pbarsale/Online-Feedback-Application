<%@ Page Language="VB" AutoEventWireup="false" CodeFile="comment.aspx.vb" Inherits="comment" Title="Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Untitled Document</title>
<style type="text/css">
    <!--
    *
    {
        margin:0px;
        padding:0px;
        }
#apDiv1 {
	position:absolute;
	width:1043px;
	height:150px;
	z-index:1;
        top: 17px;
        left: 10px;
    }
#apDiv2 {
	position:absolute;
	width:148px;
	height:149px;
	z-index:1;
	left: -1px;
	top: 1px;
}
#apDiv3 {
	position:absolute;
	width:884px;
	height:107px;
	z-index:2;
	left: 167px;
	top: 24px;
	background-color: #FFFFFF;
}
#apDiv4 {
	position:absolute;
	width:896px;
	height:31px;
	z-index:3;
	left: 163px;
	top: 464px;
}
#apDiv5 {
	position:absolute;
	width:896px;
	height:125px;
	z-index:3;
	left: 161px;
	top: 320px;
}
#apDiv6 {
	position:absolute;
	width:898px;
	height:30px;
	z-index:1;
	left: 152px;
	top: 679px;
}
#apDiv7 {
	position:absolute;
	width:897px;
	height:115px;
	z-index:4;
	left: 162px;
	top: 496px;
}
#apDiv8 {
	position:absolute;
	width:900px;
	height:32px;
	z-index:5;
	left: 152px;
	top: 1084px;
}
#apDiv9 {
	position:absolute;
	width:894px;
	height:94px;
	z-index:5;
	left: 151px;
	top: 159px;
	margin-top: 15px;
    }
#apDiv10 {
	position:absolute;
	width:895px;
	height:30px;
	z-index:5;
	left: 162px;
	top: 288px;
}
#apDiv11 {
	position:absolute;
	width:898px;
	height:30px;
	z-index:5;
	left: 151px;
	top: 629px;
}
#apDiv12 {
	position:absolute;
	width:899px;
	height:31px;
	z-index:5;
	left: 161px;
	top: 867px;
}
#apDiv13 {
	position:absolute;
	width:899px;
	height:33px;
	z-index:5;
	left: 162px;
	top: 1050px;
}
#apDiv14 {
	position:absolute;
	width:894px;
	height:68px;
	z-index:5;
	left: 161px;
	top: 316px;
}
#apDiv15 {
	position:absolute;
	width:895px;
	height:29px;
	z-index:6;
	left: 153px;
	top: 229px;
}
#apDiv16 {
	position:absolute;
	width:900px;
	height:31px;
	z-index:3;
	left: 161px;
	top: 1269px;
}
#apDiv17 {
	position:absolute;
	width:900px;
	height:115px;
	z-index:5;
	left: 161px;
	top: 1134px;
}
#apDiv18 {
	position:absolute;
	width:898px;
	height:115px;
	z-index:5;
	left: 161px;
	top: 900px;
}
#apDiv19 {
	position:absolute;
	width:898px;
	height:124px;
	z-index:5;
	left: 159px;
	top: 727px;
}
#apDiv20 {	position:absolute;
	width:900px;
	height:115px;
	z-index:5;
	left: 151px;
	top: 717px;
}
#apDiv21 {	position:absolute;
	width:900px;
	height:115px;
	z-index:5;
	left: 151px;
	top: 717px;
}
#apDiv22 {	position:absolute;
	width:898px;
	height:30px;
	z-index:5;
	left: 151px;
	top: 629px;
}
#apDiv23 {
	position:absolute;
	width:901px;
	height:115px;
	z-index:6;
	left: 161px;
	top: 1302px;
}
#apDiv24 {
	position:absolute;
	width:902px;
	height:32px;
	z-index:7;
	left: 160px;
	top: 1453px;
}
#apDiv25 {
	position:absolute;
	width:903px;
	height:32px;
	z-index:8;
	left: 0px;
	top: 51px;
}
#apDiv26 {
	position:absolute;
	width:903px;
	height:115px;
	z-index:9;
	left: 0px;
	top: 83px;
}
#apDiv27 {
	position:absolute;
	width:903px;
	height:31px;
	z-index:10;
	left: 1px;
	top: 221px;
}
#apDiv28 {
	position:absolute;
	width:904px;
	height:171px;
	z-index:8;
	left: 161px;
	top: 1707px;
}
    #form1
    {
        height: 13px;
    }
#apDiv29 {
	position:absolute;
	width:302px;
	height:47px;
	z-index:3;
	left: 162px;
	top: 295px;
}
#apDiv30 {
	position:absolute;
	width:576px;
	height:197px;
	z-index:4;
	left: 168px;
	top: 411px;
}
-->
</style>
<script type = "text/javascript" >

    function preventBack() { window.history.forward(); }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };
    function printFile1()
     {
         window.print();
    }

</script>


</head>

<body>
    <form id="form1" runat="server">

 
<div id="apDiv1" style="border: thin solid #000000">
  <div id="apDiv2" style="border: thin solid #000000">
    <div>
      <img src="logo.png" width="146" height="139" alt="" />
     
      <div id="apDiv9">
          
          Name of The Department :&nbsp;<asp:Label 
              ID="lbldept" runat="server"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/admin.aspx">Back</asp:HyperLink>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
          Select Year :&nbsp;
          <asp:DropDownList ID="ddlannualyear" runat="server" AutoPostBack="True">
          </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Semester :&nbsp;
          <asp:DropDownList ID="ddlsem" runat="server" AutoPostBack="True">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
          </asp:DropDownList>
          <br />
          <br />
          <br />
          <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </div>
    </div>
  </div>
</div>
<div id="apDiv3">  
  <center><h1>Government College Of Engineering, Aurangabad   </h1>
    <h3>(An Autonomous Institute of Government of Maharashtra)</h3>
  </center>
</div>
    <p><br />
    <br /><br /><br /><br /><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br /><br /><br /><br />
    <br />
    <br />
    </p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div id="apDiv30">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="Horizontal" Height="89px" Width="596px" BorderStyle="Solid">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <Columns>
                <asp:BoundField DataField="comment" HeaderText="comment" 
                    SortExpression="comment" />
            </Columns>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#999999" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:feedbackConnectionString %>" 
            
            >
        </asp:SqlDataSource>
    </div>
    <p>&nbsp;</p>
    <div id="apDiv29">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Names="Times New Roman" Font-Size="X-Large" Text="Student Responses..."></asp:Label>
    </div>
    <p><br />
    </p>
    </form>
</body>
</html>

