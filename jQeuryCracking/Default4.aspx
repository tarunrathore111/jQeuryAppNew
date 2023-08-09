<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default4.aspx.cs" Inherits="jQeuryCracking.Default4" %>

<!DOCTYPE html>
<%--documents for carator selectors https://api.jquery.com/category/selectors/--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.1.1.slim.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                //$('#SelectCountries').change(function () {
                //    var selectedOption = $('#SelectCountries option:selected');
                //    $('#divResult').html('Value = ' + selectedOption.val() + ", Text = " + selectedOption.text());
                //});
                $('#SelectCountriesAdditional').change(function () {
                    var selectedOption = $('#SelectCountriesAdditional option:selected');
                    if (selectedOption.length > 0) {
                        var resultString = '';
                        selectedOption.each(function () {
                            resultString += 'Value = ' + $(this).val() + ', Text = ' + $(this).text() + ' <br /> ';
                        });
                        $('#divResult').html(resultString);
                    }
                    
                    
                });
            });

    </script>
</head>
<body>
    <form id="form1" runat="server">
<%--        Country :  
        <select id ="SelectCountries">
            <option value ="UK">United Kingdom</option>
            <option value ="CA">Canada</option>
            <option value ="AU">Australia</option>
            <option value ="IND">India</option>
        </select>
        <br />--%>
    <div id="divResult">
                CountryAdditional :  
        <select id ="SelectCountriesAdditional" multiple="multiple">
            <option value ="UK">United Kingdom</option>
            <option value ="CA">Canada</option>
            <option value ="AU">Australia</option>
            <option value ="IND">India</option>
        </select>
        <br />
    <div id="div1">
    
    </div>
    </form>
</body>
</html>
