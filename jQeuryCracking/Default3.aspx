<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="jQeuryCracking.Default3" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.1.1.slim.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#btnsubmit').click(function () {
                    var varcityid = $('#txtcityid').val();

                    $.ajax({
                        url: 'WebService1.asmx/getCityId',
                        data: { cityid: varcityid },
                        method: 'post',
                        datatype: 'xml',
                        success: function (date) {
                            var jqueryXml = $(data);
                            $('#txtcityname').val(jqueryXml.find('cityname').text());
                            $('#txtstudentid').val(jqueryXml.find('citystudentid').text());
                        },
                        error: function (err) {
                            alert(err);
                        }

                    });
                });
            });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
    <div>
        City ID: <input type="text" id="txtcityid"/> <br />
        <input type="button" id="btnsubmit" value="Submit"/> <br />
        City Name : <input type="text" id="txtcityname"/> <br />
        City id : <input type="text" id="txtstudentid"/>
    </div>
    </form>
</body>
</html>
