<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SimpleBeautyWebsite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <p>
    <asp:Label ID="lblLoginUsername" runat="server" Text="Username:" AssociatedControlID="txtboxLoginUsername"></asp:Label>
</p>
    <p>
        <asp:TextBox ID="txtboxLoginUsername" runat="server" Font-Size="Large" MaxLength="20"></asp:TextBox>

    </p>
    <p>
        <asp:Label ID="lblLoginPw" runat="server" AssociatedControlID="txtboxLoginpw" Text="Password:"></asp:Label>

    </p>
    <p>
        <asp:TextBox ID="txtboxLoginpw" runat="server" Font-Size="Large" ValidateRequestMode="Enabled" ValidationGroup="Password" TextMode="Password"></asp:TextBox>

    </p>
    <p>
        <asp:Button ID="btnLogin" runat="server" Font-Size="Large" OnClick="btnLogin_Click" Text="Login" />

    </p>
     <p>
        <asp:Literal ID="litErrorLogin" runat="server"></asp:Literal>

    </p>
     <p>
         New to Simple Beauty? Sign up as our new customer!</p>
     <p>
         <asp:Label ID="lblName" runat="server" AssociatedControlID="txtboxName" Text="Name:"></asp:Label>
     </p>
     <p>
         <asp:TextBox ID="txtboxName" runat="server" Font-Size="Large" MaxLength="40" ValidateRequestMode="Enabled" ValidationGroup="Name"></asp:TextBox>
     </p>
     <p>
         <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtboxEmail" Text="Email:"></asp:Label>
     </p>
     <asp:TextBox ID="txtboxEmail" runat="server" CausesValidation="True" Font-Size="Large" MaxLength="40" ValidateRequestMode="Enabled" ValidationGroup="Email"></asp:TextBox>
     <p>
         <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtboxPassword" Text="Password:"></asp:Label>
     </p>
     <p>
         <asp:TextBox ID="txtboxPassword" runat="server" Font-Size="Large" MaxLength="25" TextMode="Password" ValidateRequestMode="Enabled" ValidationGroup="Password"></asp:TextBox>
     </p>
     <p>
         <asp:Button ID="btnSignup" runat="server" Font-Size="Large" OnClick="btnSignup_Click" Text="Sign Up" />
     </p>
     <asp:Literal ID="litSignup" runat="server"></asp:Literal>
</asp:Content>