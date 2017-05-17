<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="ImageUpload.aspx.cs" Inherits="SimpleBeautyWebsite.ImageUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
</asp:Content>
