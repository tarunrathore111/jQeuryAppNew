<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default2.aspx.cs" Inherits="jQeuryCracking.Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.1.1.slim.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // $('[title="div1title"]').css('border', '3px solid red');
            //$('div[title]').css('border', '3px solid red');
            $('div[title],[style]').css('border', '3px solid red');
            $('#btnsubmit').click(function() {
                $('input[Type="text"]').each(function() {
                    alert($(this).val());
                })
                var result = $('input[type="radio"]:checked');
                if(result.length > 0)
                {
                    $('#divresult').html(result.val() + "Is checked");
                }
                else
                {
                    $('#divresult').html("Not checked");
                }
            })
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div title="div1title" style="background-color: grey">                            
        div 1
    </div>
        <br />
        <div title="div2title" style="background-color: grey">
            div2
        </div>
                <div title="div3title">
            div3
        </div>
        <p title="ptitle">
            this is paragraph
        </p>
        <span title="div1title">
            SPAN1
        </span>
        <br />
        Fisrt Name : <input type="text" value ="john" />
        <br /> <br />
        Gender : <input type="radio" name="Gender" value="Male"/> 
        <input type="radio" name="Gender" value="Female"/>
        <input id="btnsubmit" type="submit" value="submit" />
        <div id ="divresult"></div>
    </form>
</body>
</html>
