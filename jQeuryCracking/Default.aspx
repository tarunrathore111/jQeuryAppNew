<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="jQeuryCracking.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<script src="//ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js">
</script>--%>
   <%-- <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.1.1.min.js"></script>--%>
    <script src="Scripts/jquery-3.1.1.slim.min.js"></script>
       
</head>
<body>
     <script type="text/javascript">
         //$(window).on("load", function () {
         //    $('#div1').html("height = " + $('#img1').height() + "</br>" + "Width = " + $('#img1').width());
         //});
         $(document).ready(function () {
             $('tr:nth-child(2) td:nth-child(2)').css("background-color", "blue");
             //document.getElementById("Button2").style.backgroundColor = "yellow";  //throw error.
             document.getElementById("Button1").style.backgroundColor = "yellow";  //getelementbyid is faster than selector

             //$('#Button1').css('background-color', 'yellow');
             $('#Button1').click(function () {
                 alert('Jquery is ready');
             });
             //example 2-------------------------------------
            // $('.small').css('border', '5px solid red');
             // $('.big').css('border', '5px solid green');
             // $('.small, .big').css('border', '5px solid green');
             $('.small, span.big').css('border', '5px solid green');
             $('#div5 .small').css('border', '5px solid gray');
         });
    </script>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>hello
                </td>
                <td>hello
                </td>
                <td>hello
                </td>
            </tr>
            <tr>
                <td>hello
                </td>
                <td>hello
                </td>
                <td>hello
                </td>
            </tr>
        </table>
    <div id ="div1">
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <img id = "img1" src="Images/487651_597480460280991_1489401759_n.png" />
    </div>
        <br />
        <%-- class selector example 2 --%>
    <div id="div2" class="small">                            
        div 2
    </div>
        <span id="span1" class="small">
            span 1
        </span>
        <br />
            <div id="div3" class="big">
        div 3
    </div>
        <span id="span2" class="big">
            span 2
        </span>
       <%-- --------------- --%>
                <%--example 3 --%>
    <div id="div4" class="small">                            
        div 4
    </div>
            <div id="div5" class="big">
              div 5
                <div class="small">
                    Div 6
                </div>
                <span class="small">
                    SPAN
                </span>
                <br />
    </div>
       <%-- --------------- --%>
    </form>
</body>
</html>
