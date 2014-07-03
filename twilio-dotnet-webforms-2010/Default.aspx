﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="twilio_dotnet.Default" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <meta name="description" content="Twilio starter code">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Welcome to the .NET Starter!</title>

    <!-- A little CSS to make our page prettier -->
    <link id="Link1" rel="stylesheet" runat="server" href="~/Content/app.css"/>
    <link id="Link2" rel="icon" type="image/png" runat="server" href="~/Content/favicon.png" />

    <!-- Include jQuery to help us with some UI stuff -->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js">
    </script>
</head>
<body>
    <form id="Form1" runat="server">

    <!-- A simple UI to test our Twilio back end -->
    <div id="content">

        <div id="flash" style="display:none;">
            <p><span id="flash-message"></span> <a href="#">Close</a></p>
        </div>

        <div id="welcome">
            <img id="Img1" runat="server" src="~/Content/logo.png" alt="logo"/>
            <h1><span>.NET</span> Starter</h1>
        </div>

        <h3>Hello World</h3>
        <p>
            Below, we have two simple demos that will confirm your environment
            has been properly configured.  
            <p>Please refer to the 
            <a href="https://github.com/Beans0063/starter-dotnet">README.md in your 
            starter app repository</a> to see how to configure this application.</p>                   
        </p>
        <br/>
        <ul id="tabs">
            <li id="messaging" class="current">Messaging</li>
            <li id="call">Voice Call</li>
        </ul>
            <p>Enter your mobile phone number:</p>
            <input id="to" type="text" 
                placeholder="ex: +16518675309"/>
            <button>Send me a message</button>
    </div>

    <!-- Some dirty JavaScript to help drive our UI -->
    <!-- Some ajax magic to hit our back end and make calls/send messages -->
    <asp:ScriptManager ID="ScriptManager1" runat="server" LoadScriptsBeforeUI="false">
        <Scripts>
            <asp:ScriptReference Path="~/Content/js/ui.js" />
            <asp:ScriptReference Path="~/Content/js/form.js" />
        </Scripts>
    </asp:ScriptManager>

    </form>
</body>
</html>