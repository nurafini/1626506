<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SimpleBeautyWebsite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="lblLoginUsername" runat="server" Text="Username:" AssociatedControlID="txtboxLoginUsername" Font-Size="Large"></asp:Label>
</p>
    <p>

        <asp:TextBox ID="txtboxLoginUsername" runat="server" Font-Size="Large" MaxLength="20"></asp:TextBox>

    </p>
    <p>

        <asp:Label ID="lblLoginPw" runat="server" AssociatedControlID="txtboxLoginpw" Font-Size="Large" Text="Password:"></asp:Label>

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
</asp:Content>
