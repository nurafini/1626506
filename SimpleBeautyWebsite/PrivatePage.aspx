<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrivatePage.aspx.cs" Inherits="SimpleBeautyWebsite.PrivatePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    You are now successfully logged in.
        <br />
        <asp:Button ID="btnSignOut" runat="server" OnClick="btnSignOut_Click" Text="Sign Out" />
    </div>
    </form>
</body>
</html>
