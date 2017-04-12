<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SimpleBeautyWebsite.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <asp:Label ID="lblName" runat="server" AssociatedControlID="txtboxName" Text="Name:" Font-Size="Large"></asp:Label>
    </p>
    <p>
    <asp:TextBox ID="txtboxName" runat="server" Font-Size="Large" MaxLength="40" ValidateRequestMode="Enabled" ValidationGroup="Name"></asp:TextBox>
    </p>
    <p>
    <asp:Label ID="lblEmail" runat="server" AssociatedControlID="txtboxEmail" Text="Email:" Font-Size="Large"></asp:Label>
    </p>
    <asp:TextBox ID="txtboxEmail" runat="server" Font-Size="Large" CausesValidation="True" MaxLength="40" ValidateRequestMode="Enabled" ValidationGroup="Email"></asp:TextBox>
   <p>
    <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtboxPassword" Text="Password:" Font-Size="Large"></asp:Label>
    </p>
    <p>
    <asp:TextBox ID="txtboxPassword" runat="server" Font-Size="Large" MaxLength="25" ValidateRequestMode="Enabled" ValidationGroup="Password"></asp:TextBox>
    </p>
    <p>
    <asp:Button ID="btnSignup" runat="server" Text="Sign Up" Font-Size="Large" OnClick="btnSignup_Click" />
        </p>
    <asp:Literal ID="litSignup" runat="server"></asp:Literal>
</asp:Content>
