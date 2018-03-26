<%@ Page Language="VB" AutoEventWireup="false" CodeFile="stud_login.aspx.vb" Inherits="stud_login" Title="Student Login"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 2px;
            width: 9px;
        }
    #apDiv10 {
	position:absolute;
	width:1220px;
	height:24px;
	z-index:2;
	left: 2px;
	top: 109px;
	background-color: #CCCCCC;
}
    #apDiv1 {	position:absolute;
	width:1219px;
	height:111px;
	z-index:1;
	left: 2px;
	top: -1px;
}
#apDiv9 {	position:absolute;
	width:449px;
	height:54px;
	z-index:1;
	left: 376px;
	top: 37px;
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
	width:919px;
	height:100px;
	z-index:4;
	left: 128px;
	top: 153px;
	background-color: #999999;
}
    #apDiv4 {
	position:absolute;
	width:914px;
	height:128px;
	z-index:5;
	left: 129px;
	top: 270px;
            bottom: 239px;
        }
        .style1
        {
            width: 599px;
            height: 34px;
        }
        .style2
        {
            width: 180px;
            height: 82px;
        }
        .style4
        {
            width: 141px;
            height: 82px;
        }
        .style5
        {
            width: 155px;
            height: 82px;
        }
        .style6
        {
            height: 82px;
            width: 168px;
        }
    #apDiv5 {
	position:absolute;
	width:509px;
	height:273px;
	z-index:6;
	left: 130px;
	top: 479px;
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
        .style7
        {
            height: 34px;
            width: 585px;
        }
        .style8
        {
            width: 163px;
        }
    #apDiv8 {
	position:absolute;
	height:34px;
	z-index:7;
	left: 300px;
	top: 715px;
}
    #apDiv11 {
	position:absolute;
	width:360px;
	height:387px;
	z-index:8;
	left: 675px;
	top: 445px;
	background-color: #E6E6E6;
}
        .style9
        {
            width: 538px;
        }
        .style11
        {
            width: 476px;
        }
        .style12
        {
            width: 200px;
            text-align:left;
        }
        .style13
        {
            height: 34px;
            width: 500px;
        }
        .style14
        {
            width: 163px;
            height: 44px;
        }
        #form2
        {
            height: 370px;
        }
        </style>
    
    
    <script type = "text/javascript" >

        function preventBack() { window.history.forward(); }

        setTimeout("preventBack()", 0);

        window.onunload = function () { null };

</script>
</head>
<body style="height: 1px">
    <div id="apDiv11">
    <marquee behavior="scroll" direction="up" onmouseover="this.stop();" 
            onmouseout="this.start();" loop="-1" 
            style="height: 364px; margin-left: 16px; width: 267px;">
            <center>
    <img src="a.png" alt="" align="middle" style="height: 165px; width: 270px;" /><br /><br />
        <img src="aa.jpg" alt="" style="height: 165px; width: 270px;" /><br /><br />
        <img alt="" src="b.jpg" style="height: 165px; width: 270px;" /><br /><br />
        <img alt="" src="c.jpg" style="height: 165px; width: 270px;" /><br /><br />
        <img alt="" src="d.jpg" style="height: 165px; width: 270px;" /><br /><br />
        <img alt="" src="e.jpg" style="height: 165px; width: 270px;" /></marquee>
        </center>
        </div>
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
          <div id="apDiv5" align="center">
        <table height="45" border="1" style="width: 477px">
          <tr bgcolor="#D6D6D6">
            <td bgcolor="#999999" 
                  
                  style="color: #FFFFFF; font-size: medium; font-weight: bold; font-family: 'times New Roman', Times, serif" 
                  class="style9">&nbsp;&nbsp; Courses will be displayed according to your semesterster</td>
          </tr>
        </table>
        <table height="122" border="1" class="style11" style="margin-left: 0px">
         <tr>
          <td class="style8" style="font-weight: bold">
              Year<br />
                (Select from the list) </td>
          <td class="style12">
       
          &nbsp;
       
          <asp:DropDownList ID="ddlyear" runat="server" Font-Bold="True" 
                    ForeColor="Black" ToolTip="year" style="margin-left: 0px" 
                  AutoPostBack="True">
              <asp:ListItem>Select year</asp:ListItem>
              </asp:DropDownList>
         
              
             </td>
          
          </tr>
          <tr>
            <td  class="style14" style="font-weight: bold">Your semester<br />
                (Select from the list)</td>
            <td class="style12">

   

                       
                           &nbsp;  
                           <asp:DropDownList ID="ddlsem" runat="server" Font-Bold="True" 
                    ForeColor="Black" ToolTip="semester" Enabled="False">
                  <asp:ListItem Selected="True">1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
              </asp:DropDownList>
                     
    
                    </td>
          </tr>
         
          <tr>
            <td class="style8" style="font-weight: bold"> Elective Subject (Theory)</td>
            <td class="style12">

   

                       
                           &nbsp;

   

                       
                           <asp:DropDownList ID="ddlelective" runat="server" Font-Bold="True" 
                    ForeColor="Black" ToolTip="semester">
                  <asp:ListItem>None</asp:ListItem>
              </asp:DropDownList>
                     
    
                    </td>
          </tr>

           <tr>
            <td class="style8" style="font-weight: bold"> Elective Subject <br />
                (Practical)</td>
            <td class="style12">

   

                       
                           &nbsp;

   

                       
                           <asp:DropDownList ID="ddlelectiveprac" runat="server" Font-Bold="True" 
                    ForeColor="Black" ToolTip="semester">
                  <asp:ListItem>None</asp:ListItem>
              </asp:DropDownList>
                     
    
                    </td>
          </tr>

        </table>
        <br />
      </div>
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
<br />
          <div id="apDiv3" 
        style="color: #000000; font-size: x-large; font-weight: bold; background-color: #FFFFFF;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FORMAT FOR EVALUATION OF FACULTY BY STUDENTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
                  ID="btnlogout" runat="server" Text="Logout" Width="69px" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="lblpass" runat="server" Font-Size="Medium" 
                  Text="Enter Password :" Visible="False"></asp:Label>
              <br />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox 
                  ID="txtpass" runat="server" BorderColor="#B9B9B9" 
                  BorderStyle="Solid" Height="19px" style="margin-left: 0px; margin-bottom: 0px" 
                  TextMode="Password" Visible="False" Width="143px"></asp:TextBox>
    </div>
       <br />
         <div id="apDiv4">
      <table border="1" style="width: 911px">
        <tr>
          <td bgcolor="#D6D6D6" class="style13" 
                style="font-weight: bold; background-color: #DADADA;">&nbsp;&nbsp;&nbsp; Date :&nbsp;&nbsp;<asp:Label 
                  ID="lbldate" runat="server"></asp:Label>
            </td>
          <td style="font-weight: bold; background-color: #DADADA;" class="style7">&nbsp;&nbsp;&nbsp; 
              Department :&nbsp; &nbsp;<asp:Label ID="lbldept" runat="server"></asp:Label>
            </td>
            <td bgcolor="#D6D6D6" class="style1" style="font-weight: bold; background-color: #DADADA;">&nbsp;&nbsp;&nbsp; Year :&nbsp;&nbsp;<asp:Label 
                  ID="lblannualyear" runat="server"></asp:Label>
            </td>
        </tr>
      </table>

      <table border="1" style="width: 911px" >
        <tr>
          <td class="style2" align="center" style="font-weight: bold">&nbsp;&nbsp;&nbsp;&nbsp; Your percentage / grade
              <br />
&nbsp; in the class<br />
&nbsp; ( Select appropriate button)</td>
          <td class="style4" align="center">
              <center><asp:RadioButton ID="rb1" text="Above 80%" runat="server" Checked="True" 
                      GroupName="rb" ToolTip="Grade" /></center>
            </td>
          <td class="style5" align="center">
            <center>&nbsp;<br />
              <asp:RadioButton ID="rb2" text="Between 65% to 80%" GroupName="rb" runat="server" 
                    ToolTip="Grade" />
            </center>
            
            </td>
          <td class="style6" align="center">
          <center>
              <asp:RadioButton ID="rb3" text="Between 50% to 65%" GroupName="rb" 
                  runat="server" ToolTip="Grade" />
            </center>
            </td>
          <td class="style5" align="center">
              <asp:RadioButton ID="rb4" text="Below 50%" GroupName="rb" runat="server" />
            </td>
        </tr>
      </table>
    </div>
        
       <%--<asp:ListItem Selected="True" Value="FE">FE</asp:ListItem>
                  <asp:ListItem>SE</asp:ListItem>
                  <asp:ListItem>TE</asp:ListItem>
                  <asp:ListItem>BE</asp:ListItem>--%>


    <div id="apDiv8" style="font-size: 21px; font-weight: 100">
   
              <asp:Button ID="btnnext" runat="server" Text="Next" Height="29px" 
            Width="76px" />
    

    </div>

    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
    </p>

    </form>
    </body>
</html>
