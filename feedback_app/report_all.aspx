<%@ Page Language="VB" AutoEventWireup="false" CodeFile="report_all.aspx.vb" Inherits="report_all" Title="Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Untitled Document</title>
<style type="text/css">
    <!--
#apDiv1 {
	position:absolute;
	width:1001px;
	height:142px;
	z-index:1;
        top: 15px;
        left: 10px;
    }
#apDiv2 {
	position:absolute;
	width:144px;
	height:141px;
	z-index:1;
	left: 3px;
	top: 1px;
}
#apDiv3 {
	position:absolute;
	width:842px;
	height:44px;
	z-index:2;
	left: 167px;
	top: 25px;
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
	width:786px;
	height:180px;
	z-index:5;
	left: 148px;
	top: 185px;
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
        height: 179px;
        width: 1002px;
    }
    #Submit1
    {
        width: 110px;
    }
-->
</style>
<script type = "text/javascript" >

    function preventBack() { window.history.forward(); }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };
    function printFile1() {
        window.print();
    }


</script>


</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1" style="border: thin solid #000000">
  <div id="apDiv2">
    <div>
      <img src="logo.png" width="146" height="139" alt="" />
     
      <div id="apDiv9">
          
          Name of The Department :&nbsp; <asp:Label ID="lbldept" runat="server" Text="dept"></asp:Label> 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          &nbsp; &nbsp;&nbsp;&nbsp;
          <br />
          Select Branch :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="ddlbranch" runat="server" AutoPostBack="True">
            <asp:ListItem Selected="True" Value="ALL">All Branches</asp:ListItem>
            <asp:ListItem Value="CS">Computer Science And Enigineering</asp:ListItem>
            <asp:ListItem Value="IT">Information Technology</asp:ListItem>
            <asp:ListItem Value="ME">Mechanical Engineering</asp:ListItem>
            <asp:ListItem Value="CE">Civil Engineering</asp:ListItem>
            <asp:ListItem Value="EC">Electronics And Telecommunication</asp:ListItem>
            <asp:ListItem Value="EE">Electrical Engineering</asp:ListItem>
            <asp:ListItem>MCA</asp:ListItem>
        </asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
          &nbsp;&nbsp;
          <br />
          Select Sem Type:&nbsp;&nbsp;&nbsp;&nbsp; 
          <asp:DropDownList ID="ddlsem" runat="server">
              <asp:ListItem Selected="True" Value="ODD">1</asp:ListItem>
              <asp:ListItem Value="EVEN">2</asp:ListItem>
          </asp:DropDownList>
          &nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Select Year:&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="ddlannualyear" runat="server">
          </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          Select Degree :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:DropDownList ID="ddldegree" runat="server">
              <asp:ListItem>UG</asp:ListItem>
              <asp:ListItem>PG</asp:ListItem>
          </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          <br />
          &nbsp;&nbsp;
          <asp:Button ID="btndone" runat="server" Height="28px" Text="Display Report" 
              Width="126px" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input id="Submit1" type="submit" value="Print Report" onclick="printFile1()"/><br />
          <br /></div>
    </div>
  </div>
</div>
<div id="apDiv3">  
  <center><h1>Government College Of Engineering, Aurangabad     </h1>
      <h3>(An Autonomous Institute of Government of Maharashtra)</h3></center>
</div>
    <br /><br /><br /><br /><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          &nbsp; <asp:Label ID="lyear" runat="server" Text="Label" Font-Bold="True" 
        Font-Size="X-Large"></asp:Label>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/general_acc.aspx">Change Password</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Logout</asp:HyperLink>
          <br /><br /><br /><br /><br /><br /><br />
    <br />
    <br />
    <br />
 
    </form>
</body>
</html>

