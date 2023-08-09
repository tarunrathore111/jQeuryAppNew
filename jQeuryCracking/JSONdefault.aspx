<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="JSONdefault.aspx.cs" Inherits="jQeuryCracking.JSONdefault" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .containerDiv {
            background-color:red;
            color:white;
            font-weight:bold;
        }
        .boldclass {
            font-weight: bold;
        }
        .italicclass {
            font-style:italic;
        }
        .colorclass {
            color:red;
        }
    </style>
    <script src="Scripts/jquery-3.1.1.slim.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //var emplyeeJSON = {
            //    "FirstName": "Todd",
            //    "SecondName": "Grover",
            //    "Gender": "Male",
            //    "Salary": 50000
            //};
            //var result = '';
            //result += 'First Name :' + emplyeeJSON.FirstName + '<br/>';
            //result += 'Second Name :' + emplyeeJSON.SecondName + '<br/>';
            //result += 'Gender :' + emplyeeJSON.Gender + '<br/>';
            //result += 'Salary Name :' + emplyeeJSON.Salary + '<br/>';
            //$('#divResult').html(result);

            //////////////////////
            var emplyeeJSON = {
                "Todd": {                     //creating object
                    "FirstName": "Todd",
                    "SecondName": "Grover",
                    "Gender": "Male",
                    "Salary": 50000
                },
                "Sara": {
                    "FirstName": "Sara",
                    "SecondName": "Baker",
                    "Gender": "Female",
                    "Salary": 60000
                }
            };
            var result = '';
            //$('#divResult').html(emplyeeJSON.Sara.FirstName);
            ////////////////////////////////////// json object to string.
            var emplyeeJSON1 = [
                {
                    "FirstName": "Todd",
                    "SecondName": "Grover",
                    "Gender": "Male",
                    "Salary": 50000
                },
                {
                    "FirstName": "Sara",
                    "SecondName": "Baker",
                    "Gender": "Female",
                    "Salary": 60000
                }
            ];
            var stringResult = JSON.stringify(emplyeeJSON1);
            //$('#divJSONtoString').html(stringResult);
            ////////////////////////////////////DOM
            //alert($('div').attr('title'));
            var config = {
                'title': 'New DIV title',
                'style': 'border:3px solid red',
                'name': 'My DIV',
            };

            $('div').attr(config);
            //$('div').wrap('<div class = "containerDiv"></div>') //wrap to everydiv
            //$('div').unwrap()
            //$('div').wrapAll('<div class = "containerDiv"></div>') // warp all div in single div
            $('div').each(function () {
                //alert($(this).attr('title'));
            });

            $('#div1').click(function () {
                $('p').addClass('boldclass italicclass colorclass');
            });
            $('#bnt2').click(function () {
                $('p').removeClass('boldclass italicclass colorclass');
            });
            $('#btn').mouseover(function () {
                //$('p').fadeIn(500);
            })
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <%--        <div id="divResult">
        </div>
        <div id="divJSONtoString">
        </div>--%>
        <div id="div1" title="Mydiv1">
            div 1
        </div>
        <div id="div2" title="Mydiv2">
            div 2
        </div>
        <p id="paragraph">Paragraph Element</p>
        <div>
            <asp:Button ID="btn" runat="server" Text="Add class" /> <asp:Button ID="btn2" runat="server" Text="Remove class" />
        </div>
    </form>
</body>
</html>
