<%@ Page Language="VB" AutoEventWireup="false" CodeFile="theory_resp.aspx.vb" Inherits="theory_resp" %>

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
	width:1220px;
	height:111px;
	z-index:1;
	left: 2px;
	top: -1px;
}
#apDiv9 {	position:absolute;
	width:449px;
	height:54px;
	z-index:1;
	left: 361px;
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
	width:834px;
	height:61px;
	z-index:4;
	left: 165px;
	top: 143px;
	background-color: #999999;
}
    #apDiv4 {
	position:absolute;
	width:834px;
	height:36px;
	z-index:5;
	left: 162px;
	top: 234px;
            bottom: 259px;
        }
        .style1
        {
            width: 326px;
            height: 34px;
        }
        #apDiv5 {
	position:absolute;
	width:835px;
	height:323px;
	z-index:6;
	left: 162px;
	top: 265px;
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
	height:44px;
	z-index:8;
	left: 449px;
	top: 1436px;
}
        .style9
        {
            width: 403px;
            height: 34px;
        }
        .style10
        {
            width: 330px;
            height: 34px;
        }
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
          <div id="apDiv5">
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="lblalert" runat="server"></asp:Label>
        <asp:Table ID="tbcourse" runat="server" CellPadding="6" CellSpacing="2" GridLines="Both" 
        Height="31px" HorizontalAlign="Center" Width="836px" 
        style="margin-top: 3px" BorderColor="Gray" BorderStyle="Groove" 
            BorderWidth="3px" Font-Bold="False">

        <asp:TableRow Font-Bold="True" BackColor="#DADADA">

        <asp:TableCell>
        <center>
        <asp:Label runat="server" Text="Sr. No." ID="lb1">
        </asp:Label>
        </center>
        </asp:TableCell>
        
        <asp:TableCell>
        <center>
        <asp:Label runat="server" Text="Name of the Theory Course" ID="Label2">
        </asp:Label>
        </center>
        </asp:TableCell>
        
        <asp:TableCell>
        <center>
        <asp:Label runat="server" Text="Name of the Teacher" ID="Label3">
        </asp:Label>
        </center>
        </asp:TableCell>
        
        </asp:TableRow>


        </asp:Table>



        <br />
     <asp:Table ID="Table11" runat="server"  
        CellPadding="5" CellSpacing="2" GridLines="Both" 
        Height="31px" HorizontalAlign="Justify" Width="836px" 
        style="margin-top: 3px" borderWidth="0px">

            <asp:TableRow Font-Bold="true" HorizontalAlign="Center">
            
            <asp:TableCell Text="Your Responses below are for purpose of Evaluation">
            
            </asp:TableCell>
                        
            </asp:TableRow>

            </asp:Table>
    <asp:Table ID="disp" runat="server"  
        CellPadding="5" CellSpacing="2" GridLines="Both" 
        Height="31px" HorizontalAlign="Justify" Width="836px" 
        style="margin-top: 3px" BorderColor="Gray" BorderStyle="Groove" 
            BorderWidth="3px">

            <asp:TableRow Font-Bold="true" HorizontalAlign="Center" BackColor="#DADADA">
            
            <asp:TableCell Text="5 - Mostly">
            
            </asp:TableCell>
            
            <asp:TableCell Text="3 - Quite Often">
            
            </asp:TableCell>
            
            <asp:TableCell Text="2 - At Times">
            
            </asp:TableCell>
            
            <asp:TableCell Text="1 - Hardly">
            
            </asp:TableCell>
            
            <asp:TableCell Text="0 - Never">
            
            </asp:TableCell>
            
            </asp:TableRow>

            </asp:Table>

    <asp:Table ID="tbques" runat="server"  
        CellPadding="10" CellSpacing="2" GridLines="Both" 
        Height="31px" HorizontalAlign="Justify" Width="836px" 
        style="margin-top: 3px" BorderColor="Gray" BorderStyle="Groove" 
            BorderWidth="3px">
    </asp:Table>
    
   <asp:Table ID="tablesubmit" runat="server"  
        CellPadding="5" CellSpacing="2" GridLines="Both" 
        Height="31px" HorizontalAlign="Justify" Width="836px" 
        style="margin-top: 3px" borderWidth="0px">

            <asp:TableRow Font-Bold="true" HorizontalAlign="Center">
            
            <asp:TableCell>
            <asp:Button ID="btnsubmit" runat="server" Height="28px" Text="Submit" 
        Width="82px" style="margin-left: 0px; margin-top: 19px" />

            </asp:TableCell>
                        
            </asp:TableRow>

     </asp:Table>


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
        style="color: #000000; font-size: x-large; font-weight: bold; background-color: #FFFFFF;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FORMAT FOR EVALUATION OF FACULTY BY STUDENTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Label ID="Label1" runat="server" Font-Names="Times New Roman" 
                  Text="Theory Courses"></asp:Label>
    </div>
          <br />
         <div id="apDiv4">
      <table width="834" border="1">
        <tr>
          <td class="style10" style="font-weight: bold; background-color: #DADADA;">&nbsp;&nbsp;&nbsp; Date :&nbsp;&nbsp;
              <asp:Label ID="lbldate" runat="server" Text=""></asp:Label>
            </td>
          <td style="font-weight: bold; background-color: #DADADA;" class="style9">&nbsp;&nbsp;&nbsp; Class :&nbsp; &nbsp;<asp:Label ID="lblclass" runat="server" Text=""></asp:Label>
            </td>
             <td bgcolor="#D6D6D6" class="style1" style="font-weight: bold; background-color: #DADADA;">&nbsp;&nbsp;&nbsp; Year :&nbsp;&nbsp;<asp:Label 
                  ID="lblannualyear" runat="server"></asp:Label>
            </td>
        </tr>
      </table>

    </div>
        
    
       <%-- </asp:View>
        <asp:View ID="thnKU">
        
        </asp:View>
    </asp:MultiView>--%>

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

   

    <p>
        &nbsp;</p>

   

    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>

   

    </form>
    </body>
</html>
