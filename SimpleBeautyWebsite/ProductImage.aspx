<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductImage.aspx.cs" Inherits="SimpleBeautyWebsite.ProductImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Upload product photo with dimensions below 1000 x 1000 only.</p>
        <p>
        <asp:FileUpload ID="FileUploadImg" runat="server" />
        </p>
        <p>
        <asp:Button ID="BtnUploadImg" runat="server" OnClick="BtnUploadImg_Click" Text="Upload" />
        </p>
        <p>
        <asp:Image ID="Uploadedimage" runat="server" />
    </p>
    </div>
    </form>
</body>
</html>
