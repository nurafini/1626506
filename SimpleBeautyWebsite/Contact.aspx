<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="SimpleBeautyWebsite.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    
    <link rel="stylesheet" href="css/Contact.css" type="text/css" />
    <script src="javascript/map.js"></script>
     

    <h2>Contact Us</h2>
    <p>
        <asp:Label ID="labelName" runat="server" AssociatedControlID="textboxName" Text="Name:" CssClass="lblName"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="textboxName" runat="server" CausesValidation="True" MaxLength="30" ValidateRequestMode="Enabled" Font-Size="Medium"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="textboxName" ErrorMessage="Please enter name. Field cannot be empty."></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="labelEmail" runat="server" AssociatedControlID="textboxEmail" Text="Email:"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="textboxEmail" runat="server" MaxLength="30" TextMode="Email" ValidateRequestMode="Enabled" ValidationGroup="email" Font-Size="Medium"></asp:TextBox>
    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="textboxEmail" ErrorMessage="Please enter a valid email format." ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="textboxEmail" ErrorMessage="Email cannot be empty."></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="labelSubject" runat="server" AssociatedControlID="textboxSubject" Text="Subject:"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="textboxSubject" runat="server" Font-Size="Medium" MaxLength="20"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="textboxSubject" ErrorMessage="Please enter subject. Field cannot be empty."></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Label ID="lblDropdown" runat="server" Text="Concern:"></asp:Label>
    </p>
    <asp:DropDownList ID="dropdownConcern" runat="server" AppendDataBoundItems="true" Width="200px">
                <asp:ListItem Text="Select Concern" Value="0"></asp:ListItem>
                <asp:ListItem Text="How do I order from your website?" Value="1"></asp:ListItem>
                <asp:ListItem Text="How do I pay for my order?" Value="2"></asp:ListItem>
                <asp:ListItem Text="How long does shipping takes?" Value="3"></asp:ListItem>
                <asp:ListItem Text="Other matter" Value="4"></asp:ListItem>
            </asp:DropDownList>
    <p>
        <asp:Label ID="labelMessage" runat="server" AssociatedControlID="textboxMsg" Text="Message:"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="textboxMsg" runat="server" Height="69px" MaxLength="250" TextMode="MultiLine" Width="251px" Font-Size="Medium"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="textboxMsg" ErrorMessage="Please enter message. Field cannot be empty."></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" OnCommand="Button1_Command1" Text="Submit" />
    </p>
    <p>
        <asp:Literal ID="litMessage" runat="server"></asp:Literal>
    </p>
    
    <div id="myGoogleMap" style="width:500px; height:300px"></div>

   <img src="https://maps.googleapis.com/maps/api/staticmap?center=4.8856828,114.9314358&zoom=16&scale=false&size=600x300&maptype=roadmap&format=jpg&visual_refresh=true&markers=size:mid%7Ccolor:0xff0000%7Clabel:1%7C4.8856828,114.9314358" alt="Google Map of Simple Beauty shop location. Address: Roof Top, Plaza Abdul Razak, Jalan Laksamana Abdul Razak, Bandar Seri Begawan" width="600" height="300"/>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyARAFlBpOcUBOoBY9S4LX9M1GdFzPyMGKQ&callback=myMap"></script>
  
</asp:Content>
