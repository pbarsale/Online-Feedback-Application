<%@ Page Language="VB" AutoEventWireup="false" CodeFile="individual.aspx.vb" Inherits="individual" Title="Report" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Untitled Document</title>
<style type="text/css">
   
   
#apDiv1 {
	position:absolute;
	width:1043px;
	height:147px;
	z-index:1;
}
#apDiv2 {
	position:absolute;
	width:144px;
	height:139px;
	z-index:1;
	left: 3px;
	top: 1px;
}
#apDiv3 {
	position:absolute;
	width:884px;
	height:86px;
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
	width:894px;
	height:180px;
	z-index:5;
	left: 145px;
	top: 201px;
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
        height: 515px;
        width: 1046px;
    }
#apDiv29 {
	position:absolute;
	width:100px;
	height:53px;
	z-index:3;
	left: 785px;
	top: 149px;
}
-->
</style>
<script type = "text/javascript" >

    function preventBack() { window.history.forward(); }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };
    function printFile2() {
        window.print();
    }
</script>


</head>

<body>
    <form id="form1" runat="server">
<div id="apDiv1" style="border: thin solid #000000; top: 15px; left: 10px;">
  <div id="apDiv2">
    <div>
      <img src="logo.png" width="146" height="139" alt="" />
     
      <div id="apDiv9">
          
          Name of The Department :<asp:Label ID="lbldept" runat="server" Text="dept"></asp:Label> 
         
          <br />

          <br />

          <br />
          Select Sem Type&nbsp; : &nbsp;&nbsp;&nbsp; 
          <asp:DropDownList ID="ddlsem" runat="server" Height="20px" Width="54px">
              <asp:ListItem Value="ODD">1</asp:ListItem>
              <asp:ListItem Value="EVEN">2</asp:ListItem>
          </asp:DropDownList>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
          Select Year :&nbsp;&nbsp;
          <asp:DropDownList ID="ddlannualyear" runat="server" AutoPostBack="True">
          </asp:DropDownList>
          <br />
<br />
          <asp:Label ID="lblsem" runat="server" Text="Select  Staff Name"></asp:Label>
         
          <asp:DropDownList ID="ddlstaff" runat="server" Height="22px">
          </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btndone" runat="server" 
              Height="28px" Text="Display Report" 
              Width="126px" />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input id="Submit1" type="submit" value="Print Report" onclick="printFile2()"/><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <br />
          <br />
        </div>
    </div>
  </div>

    <br />

</div>
<div id="apDiv3">  
  <center><h1>Government College Of Engineering, Aurangabad   </h1>
    <h3>(An Autonomous Institute of Government of Maharashtra)</h3>
      <h3>
        
          <br />
       
     
          </h3>
      <div id="apDiv29">
          <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/report.aspx">Back</asp:HyperLink>
          <br />
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx" 
              Font-Size="Medium">Logout</asp:HyperLink>
 
          </div>
      <h3>&nbsp;
          </h3>
      <h3>&nbsp;
          </h3>
      <h3>&nbsp;
          </h3>
  </center>
</div>
    <br /><br /><br /><br /><br /><br /><br /><br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Label ID="lblyear" runat="server" Font-Names="Times New Roman" 
              Font-Size="X-Large"></asp:Label>
    <br />
    <br />
          
     <br />
      <br />
    <br />
          
     <br />
      <br />
    <br />
          
     <br />
      <br />
    <br />
         
   
    </form>
</body>
</html>

