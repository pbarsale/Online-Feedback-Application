<%@ Page Language="VB" AutoEventWireup="false" CodeFile="lab_account.aspx.vb" Inherits="lab_account" Title="Account" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
	width:609px;
	height:294px;
	z-index:4;
	left: 63px;
	top: 499px;
}
#apDiv14 {
	position:absolute;
	width:316px;
	height:63px;
	z-index:5;
	left: 58px;
	top: 813px;
}
#apDiv15 {
	position:absolute;
	width:455px;
	height:142px;
	z-index:6;
	left: 391px;
	top: 327px;
}
    #form2
    {
        height: 171px;
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
    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Change Lab Coordinator&#39;s Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
  <div id="apDiv14">
  </div>
    <p style="margin-left: 40px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" 
            ForeColor="Red"></asp:Label>
        &nbsp;</p>
    <p style="margin-left: 40px">
    </p>
<div id="apDiv15">
  <table width="456" border="1" style="height: 157px">
    <tr>
      <td width="164">Old Password&nbsp;&nbsp;&nbsp;    :</td>
      <td width="276">
          <asp:TextBox ID="txtold" runat="server" Height="28px" Width="200px" 
              TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td>New Password&nbsp;    :</td>
      <td>
          <asp:TextBox ID="txtnew" runat="server" Height="25px" TextMode="Password" 
              Width="196px"></asp:TextBox>
        </td>
    </tr>
     <tr>
      <td>Retype New Password&nbsp;:</td>
      <td>
          <asp:TextBox ID="txtretype" runat="server" Height="25px" TextMode="Password" 
              Width="196px"></asp:TextBox>
        </td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>
          <asp:Button ID="btndone" runat="server" Height="32px" Text="Done" 
              Width="92px" />
        </td>
    </tr>
  </table>
</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="Data Source=manisha\sqlexpress;Initial Catalog=feedback;Integrated Security=True;Pooling=False" 
      SelectCommand="SELECT * FROM [course_info]"> </asp:SqlDataSource>
</form>
<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p>&nbsp;</p>
</body>
</html>




