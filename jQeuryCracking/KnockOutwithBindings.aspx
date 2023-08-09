<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KnockOutwithBindings.aspx.cs" Inherits="jQeuryCracking.KnockOutwithBindings" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="Scripts/jquery-1.7.1.js"></script>
    <script src="Scripts/knockout-3.4.2.js"></script>
</head>
<body>
    <form id="form1" runat="server">
<div data-bind="visible: myvalue()">
    You will see this message only when "shouldShowMessage" holds a true value.
</div>
        <div>
    <div data-bind="event: { mouseover: enableDetails, mouseout: disableDetails }">
        Mouse over me
    </div>
    <div data-bind="event:{ mouseover: enableDetails, mouseout: disableDetails }, visible: detailsEnabled">
        Details
    </div>
            <p>
    Select a country:
    <select data-bind="options: countries,
                       optionsCaption: 'Choose one...',
                       value: selectedCountry,
                       valueAllowUnset: true" multiple="true"></select>
</p>
</div>
        <div>
            you have clicked <span data-bind='text: numberofClicks'></span> Times
        </div
        <div><button data-bind="click:registerClick, disable:hasMoreClick">Click Me</button></div>
        <div data-bind='visible: hasMoreClick'>
    That's too many clicks! Please stop before you wear out your fingers.
    <button data-bind='click: resetClick'>Reset clicks</button>
</div>
    </form>
    <script type="text/javascript">
        var viewModel = {
            //shouldShowMessage: ko.observable(true), // Message initially visible
            myvalue: ko.observableArray(),
            detailsEnabled: ko.observable(false),
            enableDetails: function () {
                this.detailsEnabled(true);
            },
            disableDetails: function () {
                this.detailsEnabled(false);
            },
            countries: ['Japan', 'Bolivia', 'New Zealand'],
            selectedCountry: ko.observable('Bolivia'),
            numberofClicks: ko.observable(0),
            registerClick : function () {
                this.numberofClicks(this.numberofClicks() + 1);
            },

            resetClick : function () {
            this.numberofClicks(0);
            },

            hasMoreClick : ko.pureComputed(function(){
                return this.numberofClicks() >= 3;
            }, this)

        };

        var ClickCounterViewModel = function () {
            this.numberofClicks = ko.observable(0);

            this.registerClick = function () {
                this.numberofClicks(this.numberofClicks() + 1);
            };

            this.resetClick = function () {
                this.numberofClicks(0);
            };

            this.hasMoreClick = ko.pureComputed(function(){
                return this.numberofClicks() >= 3;
            },this);
        };
        //viewModel.shouldShowMessage(false); // ... now it's hidden
        //viewModel.shouldShowMessage(true); // ... now it's visible again
        viewModel.myvalue(false);
        ko.applyBindings(viewModel);
        ko.applyBindings(new ClickCounterViewModel());
</script>
</body>
</html>
