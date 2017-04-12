<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SimpleBeautyWebsite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="lblLoginEmail" runat="server" Text="Email:" AssociatedControlID="txtboxLoginEmail" Font-Size="Large"></asp:Label>
</p>
    <p>

        <asp:TextBox ID="txtboxLoginEmail" runat="server" Font-Size="Large" MaxLength="40" ValidateRequestMode="Disabled" ValidationGroup="Email"></asp:TextBox>

    </p>
    <p>

        <asp:Label ID="lblLoginPw" runat="server" AssociatedControlID="txtboxLoginpw" Font-Size="Large" Text="Password:"></asp:Label>

    </p>
    <p>

        <asp:TextBox ID="txtboxLoginpw" runat="server" Font-Size="Large" ValidateRequestMode="Enabled" ValidationGroup="Password"></asp:TextBox>

    </p>
    <p>

        <asp:Button ID="btnLogin" runat="server" Font-Size="Large" OnClick="btnLogin_Click" Text="Login" />

    </p>
    <p>

        <asp:Literal ID="litErrorLogin" runat="server"></asp:Literal>

    </p>
</asp:Content>
