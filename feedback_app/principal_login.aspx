<%@ Page Language="VB" AutoEventWireup="false" CodeFile="principal_login.aspx.vb"  Inherits="principal_login" Title="Login Form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
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
	height:115px;
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
	left: 379px;
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
	width:546px;
	height:269px;
	z-index:3;
	left: 101px;
	top: 133px;
}
#apDiv12 {
	position:absolute;
	width:250px;
	height:252px;
	z-index:4;
	left: 662px;
	top: 139px;
}
#apDiv13 {
	position:absolute;
	width:251px;
	height:31px;
	z-index:5;
	left: 663px;
	top: 140px;
}
#apDiv14 {
	position:absolute;
	width:250px;
	z-index:1;
	left: 0px;
	top: 35px;
}
    .style2
    {
        height: 44px;
    }
    .style6
    {
        height: 44px;
        width: 89px;
    }
#apDiv15 {
	position:absolute;
	width:252px;
	height:34px;
	z-index:6;
	left: 662px;
	top: 353px;
}

    .style7
    {
        height: 244px;
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
	height:204px;
	z-index:9;
	left: 662px;
	top: 405px;
	background-color: #506A92;
}
#apDiv19 {
	position:absolute;
	width:252px;
	height:19px;
	z-index:10;
	left: 662px;
	background-color: #8D8D8D;
	top: 602px;
}
    .style8
    {
        height: 37px;
        width: 89px;
    }
    .style9
    {
        height: 37px;
    }
    .style10
    {
        height: 47px;
        width: 89px;
    }
    .style11
    {
        height: 47px;
    }
    #apDiv20 {
	position:absolute;
	width:69px;
	height:24px;
	z-index:2;
	left: 1114px;
	top: 72px;
}
    </style>
<script type="text/javascript">

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
	
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

Picture[1]  = "1.jpg";
Picture[2]  = "2.jpg";



// Specify the Captions...
// To add more captions, just continue
// the pattern, adding to the array below.
// To use fewer captions, remove lines
// starting at the end of the Caption array.
// Caution: The number of Captions *must*
// equal the number of Pictures!

Caption[1]  = "";
Caption[2]  = "";



// =====================================
// Do not edit anything below this line!
// =====================================

var tss;
var iss;
var jss = 1;
var pss = Picture.length-1;

var preLoad = new Array();
for (iss = 1; iss < pss+1; iss++){
preLoad[iss] = new Image();
preLoad[iss].src = Picture[iss];}

function runSlideShow(){
if (document.all){
document.images.PictureBox.style.filter="blendTrans(duration=2)";
document.images.PictureBox.style.filter="blendTrans(duration=CrossFadeDuration)";
document.images.PictureBox.filters.blendTrans.Apply();}
document.images.PictureBox.src = preLoad[jss].src;
if (document.getElementById) document.getElementById("CaptionBox").innerHTML= Caption[jss];
if (document.all) document.images.PictureBox.filters.blendTrans.Play();
jss = jss + 1;
if (jss > (pss)) jss=1;
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
          <div id="apDiv20">
              <asp:HyperLink ID="HyperLink2" runat="server" Font-Names="Times New Roman" 
                  Font-Size="Large" ForeColor="White" NavigateUrl="~/login.aspx">Back</asp:HyperLink>
          </div>
          
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div id="apDiv9" align="center"><label>Feedback Form </label>
        </div>
      </div>
    <div id="apDiv10"></div>
    <div id="apDiv11">
    
    
<table border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="347" height="280"><table border="0" cellpadding="0" cellspacing="0">
      <tr>
      <td width="347" height="280"><table border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="347" height="280"><table border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="347" height="280"><table border="0" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="347" height="280"><table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                      <td width="347" height="280"><table border="0" cellpadding="0" cellspacing="0" 
                              style="height: 244px; width: 538px">
                        <tr>
                          <!--
    The next table cell holds the images.
    Set cell and image width and height the same.
    The img src must have name=PictureBox in its
    tag.  Usually the first image in the Picture
    array in the script is used here.
    //-->
                          <td width="347" class="style7"><img src="1.jpg" alt="Feedback Form" name="PictureBox" align="top" 
                                  style="height: 244px; width: 543px; margin-top: 0px; margin-bottom: 6px" /></td>
                        </tr>
                        <tr>
                          <!-- 
    The next table cell holds the captions.
    This table cell must have id=CaptionBox and
    class=Caption in its tag. The default caption
    shows whilst loading in all browsers; NS4
    will show only the default caption, throughout.
    //-->
                          <td id="CaptionBox" class="Caption" align="center" bgcolor="#fedcba"> This is the default caption. </td>
                        </tr>
                      </table>
                      </td>

                    </tr>
                  </table></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
        </tr>
    </table></td>
  </tr>
</table>

    
    </div>
    <div id="apDiv12" style="background-color: #E5E5E5">
      <div id="apDiv14">
      <table width="251" style="height: 158px">
        <tr>
          <td bgcolor="#E5E5E5" class="style8" 
                
                style="background-color: #E2E2E2; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #336699;">&nbsp;Username&nbsp; :</td>
          <td width="145" bgcolor="#E5E5E5" class="style9">
              <asp:Label ID="Label1" runat="server" Text="Principal"></asp:Label>
          </td>
        </tr>
       
        
         <tr>
          <td bgcolor="#E5E5E5" class="style10" 
                
                style="background-color: #E2E2E2; font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold; font-style: normal; color: #336699;">
              &nbsp;Password&nbsp;&nbsp; :&nbsp;</td>
          <td bgcolor="#E5E5E5" class="style11">
              <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Width="131px" 
                  Height="25px"></asp:TextBox> 
              <br />
              <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" 
                  ForeColor="Red"></asp:Label>
             </td>
        </tr>
        <tr style="border-color: #E4E4E4">
          <td bgcolor="#E5E5E5" class="style6"></td>
          <td bgcolor="#E5E5E5" class="style2" style="border-style: hidden">
              <asp:Button ID="Btnlogin" runat="server" Text="Submit"  />
          </td>
        </tr>
       
      </table></div>
    </div>
</form>
    <div id="apDiv13" 
          style="background-color: #666666; color: #FFFFFF; font-weight: bold; font-size: medium;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Login </div>
    <div id="apDiv15" 
    style="background-color: #AEAEAE; font-weight: bold; font-style: normal; font-size: small; font-family: 'Times New Roman', Times, serif; color: #FFFFFF;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
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
    <div id="apDiv17">The feedback students provide about your teaching on their 
        end-of-semester course evaluations can be valuable in helping you improve and 
        refine your teaching.&nbsp; Soliciting&nbsp;<em>mid-semester</em> student feedback 
        has the additional benefit of allowing you to hear your students’ concerns while 
        there is still time in the semester to make appropriate changes.</div>
    <div id="apDiv18" style="color: #FFFFFF; font-weight: bold;">
    <marquee behavior="scroll" direction="up" loop="-1" class="Caption">
    
    <ul>
     <li>Government College Of Engineering,Aurangabad.</li><br />
      <li>A well defined simple application for Students feedback.</li><br />
      <li>Making Feedback evaluation simpler for the Institute.</li><br /></ul>
    
    </marquee>
    </div>
    <div id="apDiv19"></div>
<p>&nbsp;</p>
    <div id="apDiv16" 
        
        style="font-family: Georgia; font-size: 24px; font-weight: normal; font-style: italic; color: #FFFFFF;">
    &nbsp;Making Evaluation Simpler...</div>
    <p>&nbsp;</p>
</body>
</html>
