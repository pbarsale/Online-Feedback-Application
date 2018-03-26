<%@ Page Language="VB" AutoEventWireup="false" CodeFile="startfeedback.aspx.vb" Inherits="startfeedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
<style type="text/css">
     #form1 {
            height: 26px;
            width: 9px;
        }
        *
        {
            margin:0px 0px 0px 2px;
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
	width:508px;
	height:459px;
	z-index:2;
	left: 5px;
	top: 125px;
}
    .newStyle1
    {
        background-color: #666666;
    }
#apDiv3 {
	position:absolute;
	width:401px;
	height:71px;
	z-index:3;
	left: 367px;
	top: 21px;
	background-color: #666666;
}
#apDiv4 {
	position:absolute;
	width:301px;
	height:107px;
	z-index:1;
	left: 517px;
	top: 129px;
}
#apDiv5 {
	position:absolute;
	width:300px;
	height:52px;
	z-index:1;
	left: 83px;
	top: 11px;
}
#apDiv6 {
	position:absolute;
	width:165px;
	height:32px;
	z-index:1;
	left: 74px;
	top: 127px;
}
    #Password1
    {
        width: 132px;
        height: 25px;
    }
    #apDiv7 {
	position:absolute;
	width:101px;
	height:30px;
	z-index:4;
	left: 613px;
	top: 257px;
}
#apDiv8 {
	position:absolute;
	width:296px;
	height:291px;
	z-index:5;
	left: 524px;
	top: 292px;
}
#apDiv9 {
	position:absolute;
	width:449px;
	height:54px;
	z-index:1;
	left: 383px;
	top: 37px;
}
#apDiv10 {
	position:absolute;
	width:1220px;
	height:24px;
	z-index:2;
	left: 2px;
	top: 103px;
	background-color: #CCCCCC;
}
#apDiv11 {
	position:absolute;
	width:18px;
	height:76px;
	z-index:3;
	left: 101px;
	top: 133px;
}
#apDiv12 {
	position:absolute;
	width:319px;
	height:292px;
	z-index:4;
	left: 451px;
	top: 197px;
}
#apDiv13 {
	position:absolute;
	width:324px;
	height:31px;
	z-index:5;
	left: 449px;
	top: 199px;
}
#apDiv14 {
	position:absolute;
	width:314px;
	z-index:1;
	left: 0px;
	top: 37px;
}
    .style2
    {
        height: 44px;
        width: 158px;
    }
    #apDiv15 {
	position:absolute;
	width:321px;
	height:30px;
	z-index:6;
	left: 450px;
	top: 458px;
}

    #apDiv16 {
	position:absolute;
	width:543px;
	height:38px;
	z-index:7;
	left: 100px;
	top: 405px;
	background-color: #506A92;
}
#apDiv17 {
	position:absolute;
	width:543px;
	height:134px;
	z-index:8;
	left: 100px;
	top: 449px;
}
EM {
	FONT-STYLE: italic
}
EM {
	BORDER-TOP-WIDTH: 0px; PADDING-RIGHT: 0px; PADDING-LEFT: 0px; BORDER-LEFT-WIDTH: 0px; FONT-SIZE: 100%; BORDER-BOTTOM-WIDTH: 0px; PADDING-BOTTOM: 0px; MARGIN: 0px; VERTICAL-ALIGN: baseline; PADDING-TOP: 0px; FONT-FAMILY: inherit; BORDER-RIGHT-WIDTH: 0px;  font-family: inherit
}
#apDiv18 {
	position:absolute;
	width:252px;
	height:172px;
	z-index:9;
	left: 662px;
	top: 453px;
	background-color: #506A92;
}
#apDiv19 {
	position:absolute;
	width:252px;
	height:39px;
	z-index:10;
	left: 219px;
	background-color: #8D8D8D;
	top: 215px;
}
    .style23
    {
        height: 39px;
        width: 158px;
    }
    .style25
    {
        height: 62px;
        width: 158px;
    }
#apDiv20 {
	position:absolute;
	width:111px;
	height:21px;
	z-index:11;
	left: 907px;
	top: 80px;
}
#apDiv21 {
	position:absolute;
	width:142px;
	height:22px;
	z-index:11;
	left: 1049px;
	top: 78px;
}
    .style26
    {
        height: 39px;
        width: 134px;
    }
    .style27
    {
        height: 62px;
        width: 134px;
    }
    .style28
    {
        height: 44px;
        width: 134px;
    }
    .style29
    {
        height: 41px;
        width: 134px;
    }
    .style30
    {
        height: 41px;
        width: 158px;
    }
</style>
<script type="text/javascript">

    function MM_preloadImages() { //v3.0
        var d = document; if (d.images) {
            if (!d.MM_p) d.MM_p = new Array();
            var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; } 
        }

    }
</script>

<script type="text/javascript">

    // (C) 2002 www.CodeLifter.com
    // http://www.codelifter.com
    // Free for all users, but leave in this header.

    // ==============================
    // Set the following variables...
    // ==============================

    // Set the slideshow speed (in milliseconds)
    var SlideShowSpeed = 1200;

    // Set the duration of crossfade (in seconds)
    var CrossFadeDuration = 3;

    var Picture = new Array(); // don't change this
    var Caption = new Array(); // don't change this

    // Specify the image files...
    // To add more images, just continue
    // the pattern, adding to the array below.
    // To use fewer images, remove lines
    // starting at the end of the Picture array.
    // Caution: The number of Pictures *must*
    // equal the number of Captions!

    Picture[1] = "1.jpg";
    Picture[2] = "2.jpg";



    // Specify the Captions...
    // To add more captions, just continue
    // the pattern, adding to the array below.
    // To use fewer captions, remove lines
    // starting at the end of the Caption array.
    // Caution: The number of Captions *must*
    // equal the number of Pictures!

    Caption[1] = "";
    Caption[2] = "";



    // =====================================
    // Do not edit anything below this line!
    // =====================================

    var tss;
    var iss;
    var jss = 1;
    var pss = Picture.length - 1;

    var preLoad = new Array();
    for (iss = 1; iss < pss + 1; iss++) {
        preLoad[iss] = new Image();
        preLoad[iss].src = Picture[iss];
    }

    function runSlideShow() {
        if (document.all) {
            document.images.PictureBox.style.filter = "blendTrans(duration=2)";
            document.images.PictureBox.style.filter = "blendTrans(duration=CrossFadeDuration)";
            document.images.PictureBox.filters.blendTrans.Apply();
        }
        document.images.PictureBox.src = preLoad[jss].src;
        if (document.getElementById) document.getElementById("CaptionBox").innerHTML = Caption[jss];
        if (document.all) document.images.PictureBox.filters.blendTrans.Play();
        jss = jss + 1;
        if (jss > (pss)) jss = 1;
        tss = setTimeout('runSlideShow()', SlideShowSpeed);
    }

</script>



<script type = "text/javascript" >

    function preventBack() { window.history.forward(); }
    setTimeout("preventBack()", 0);
    window.onunload = function () { null };

</script>


</head>
<body onload="runSlideShow()">
    <form id="form1" runat="server">
      <div id="apDiv1" 
          style="background-color: #506A92; font-style: normal; color: #FFFFFF; font-family: Georgia; font-weight: 100; font-size: 38px;" 
          align="center">
          
          &nbsp;
          
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div id="apDiv9" align="center">
        <label>Feedback Form </label>
      </div>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      
          <br />
          <br />
          <br />
          <br />
      
      </div>
    <div id="apDiv10">
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblshow" runat="server" Font-Size="Large"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
    
    <div id="apDiv12" style="background-color: #E5E5E5">
      <div id="apDiv14">
      <table style="height: 158px; width: 308px;">
      
         <tr>
         <td bgcolor="#E5E5E5" class="style26" 
                
                 
                 
                 
                 style="background-color: #E2E2E2; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #336699;">
              &nbsp;Year&nbsp;:&nbsp;</td>
              <td class="style23">
                  <asp:TextBox ID="txtyear" runat="server" Height="24px" Width="130px"></asp:TextBox>
                  <br />
                  (format : 2010-11)</td>

        </tr>
         <tr>
         <td bgcolor="#E5E5E5" class="style29" 
                
                 
                 
                 
                 style="background-color: #E2E2E2; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #336699;">
              &nbsp;Semester&nbsp;:&nbsp;</td>
              <td class="style30">
                  <asp:DropDownList ID="ddlsem" runat="server">
                      <asp:ListItem Value="1">1</asp:ListItem>
                      <asp:ListItem Value="2">2</asp:ListItem>
                  </asp:DropDownList>
              </td>

        </tr>

         <%--<tr>
            <td bgcolor="#E5E5E5" class="style22"        
                 
                 style="background-color: #E2E2E2; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #336699;">
              &nbsp;Stream&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;</td>

              <td class="style23">
                  <asp:DropDownList ID="DropDownList1" runat="server" Width="132px">
                      <asp:ListItem Selected="True">UG</asp:ListItem>
                      <asp:ListItem>PG</asp:ListItem>
                  </asp:DropDownList>
                  
                      
                 
              </td>

        </tr>        --%>
         <tr>
          <td bgcolor="#E5E5E5" class="style27" 
                
                
                 
                 
                 style="background-color: #E2E2E2; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #336699;">
              &nbsp;Password&nbsp;&nbsp; :&nbsp;</td>
          <td bgcolor="#E5E5E5" class="style25">
              <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="131px" 
                  Height="25px"></asp:TextBox> 
              <br />
&nbsp;<asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>
              <br />
             </td>
        </tr>
        <tr style="border-color: #E4E4E4">
          <td bgcolor="#E5E5E5" class="style28">
      
              <asp:Button ID="btnstart" runat="server" Text="Start Feedback" Width="125px" />
            </td>
          <td bgcolor="#E5E5E5" class="style2" style="border-style: hidden">
              <br />
              <asp:Button ID="btnend" runat="server" Text="End Feedback" Width="125px" 
                  Height="26px" />
              <br />
              <br />
          </td>
        </tr>
       
      </table></div>
    </div>
    <div id="apDiv13" 
          style="background-color: #666666; color: #FFFFFF; font-weight: bold; font-size: medium;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Login </div>
    <div id="apDiv15" 
    style="background-color: #AEAEAE; font-weight: bold; font-style: normal; font-size: medium; font-family: 'Times New Roman', Times, serif; color: #FFFFFF;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </div>
    

   
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
