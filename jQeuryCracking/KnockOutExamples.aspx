<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KnockOutExamples.aspx.cs" Inherits="jQeuryCracking.KnockOutExamples" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.7.1.js"></script>
    <script src="Scripts/knockout-3.4.2.js"></script>
<%--        <script src="Scripts/jquery-3.1.1.slim.min.js"></script>--%>
    <script>
        $(document).ready(function () {
            //$("#addNewdetails").click(function () {
            //    debugger;
            //    //var acc1 = new Details("Bike", "Mech")
            //    //var acc = new Details("Bike", "Mechanical");
            //    //AppViewModel.details.rows.push(acc);
            //    //AppViewModel("tarun", "Rathore").details.push(new Details(name = "Bike", type = "Mechanical"));
            //    AppViewModel("Tarun", "Rathore").detials1.push([new {name: "Tarun", type: "Rathore"}]);
            //    //alert(AppViewModel("Tarun", "Rathore").details.length)
            //    ko.applyBindings(new AppViewModel("Tarun", "Rathore"));
                
            //   // AppViewModel.details.push(acc)
            //    //alert(AppViewModel.arguments.details.length)
            //});
        });
    </script>

</head>
    
<body>
    <form id="form1" runat="server">
    <div>
    
      <p>First String: <input data-bind = "value: firstString" /></p>
      <p>Second String: <input data-bind = "value: secondString" /></p>

      <p>First String: <strong data-bind = "text: firstString">Hi</strong></p>
      <p>Second String: <strong data-bind = "text: secondString">There</strong></p>
        <p>Derived String: <strong data-bind = "text: thirdString"></strong></p>
    </div>
        <div>
<%--            <input type="text" data-bind="text: name" />
            <input type="text" data-bind="text: type" />--%>
            <input type="button" value="AddNewDetail" id="addNewdetails" data-bind="click: addName" />
            
            List of Name: <select data-bind="options: details, optionsText: 'name'"></select>
            LIst of New Name: <select data-bind="options: detials1, optionsText: 'name'"></select>
            <%--, optionstext:'name', optionsvalue:'name'--%>
        </div>
        <table>
    <thead>
        <tr><th>Name</th><th>Type</th></tr>
    </thead>
    <tbody data-bind="foreach: detials1">
        <tr>
            <td data-bind="text: name"></td>
            <td data-bind="text: type"></td>
        </tr>
    </tbody>
</table>
        <ul data-bind="foreach: places">
    <li>
        <span data-bind="text: $data"></span>
        <button data-bind="click: $parent.removePlace">Remove</button>
    </li>
</ul>
    </form>
        <script type="text/javascript">
         <!-- This is called "viewmodel". This javascript section defines the data and behavior of UI -->
            //<!--http://knockoutjs.com/examples/helloWorld.html-->
            var Details = function (name, type) {
                this.name = name;
                this.type = type;
            }
            var AppViewModel = function (fname, lname) {
                var self = this;
                this.firstString = ko.observable(fname);
                this.secondString = ko.observable(lname);

                this.thirdString = ko.computed(function () {
                    return this.firstString() + " " + this.secondString();
                }, this);

                this.details = ko.observableArray([
                    new Details("Bungle", "Bear"),
                    new Details("George", "Hippo"),
                    new Details("Zippy", "unknown")
                ]);
                this.detials1 = ko.observableArray([{ name: "Bungle", type: "Bear" }, { name: "Ashish", type: "Man" }]);
                this.addName = function () {
                    this.details1.push({ name: "Bungle", type: "Bear" });
                }
                self.places = ko.observableArray(['London', 'Paris', 'Tokyo']);

                // The current item will be passed as the first parameter, so we know which place to remove
                self.removePlace = function (place) {
                    self.places.remove(place)
                }
            }
            //$(document).ready(function () {
            //    //debugger;
            //    alert(AppViewModel.arguments.firstString() + "" + AppViewModel.arguments.secondString());
            //});

    // Activates knockout.js
    ko.applyBindings(new AppViewModel("Tarun", "Rathore"));
      </script>
</body>
</html>
