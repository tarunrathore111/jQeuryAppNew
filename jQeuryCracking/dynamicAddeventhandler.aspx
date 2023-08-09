<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dynamicAddeventhandler.aspx.cs" Inherits="jQeuryCracking.dynamicAddeventhandler" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.1.1.slim.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('li').on('click', function () {
                    $(this).remove();
                });
                $('#btnAdd').on('click', function () {
                    var newListItem = $('<li> New List Item </li>').on('click', function () {
                        $(this).remove();
                    });
                    $('ul').append(newListItem);
                });
                $('#btnAddlanguage').on('click', function () {
                    var selectedValue = $('#ddllanguages').val();
                    var id = 1;
                    var newListItem = $('<div id="' + id + '"><img src="Images/487651_597480460280991_1489401759_n.png" width="10px" height="10px" />' + selectedValue + '</div>').on('click', function () {
                        $(this).remove();
                    });
                    $('#Values').append(newListItem);
                });

            });
        </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <input id="btnAdd" type="Button" runat="server" value ="Add new Value" />
        <ul>
            <li>List Item</li>
            <li>List Item</li>
        </ul>
    </div>
        <input id="btnAddlanguage" type="Button" runat="server" value ="Add new Value" />
        <asp:DropDownList id ="ddllanguages" runat="server">
            <asp:ListItem>English</asp:ListItem>
            <asp:ListItem>Hindi</asp:ListItem>
        </asp:DropDownList>
        <div id="Values"></div>
        <asp:Button id="submit" runat="server" />
    </form>
</body>
</html>
