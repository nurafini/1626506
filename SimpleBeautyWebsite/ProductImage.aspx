<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductImage.aspx.cs" Inherits="SimpleBeautyWebsite.ProductImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FileUpload ID="FileUploadImg" runat="server" />
        <br />
        <asp:Button ID="BtnUploadImg" runat="server" OnClick="BtnUploadImg_Click" Text="Upload" />
        <br />
        <asp:Image ID="Uploadedimage" runat="server" />
    
    </div>
    </form>
</body>
</html>
