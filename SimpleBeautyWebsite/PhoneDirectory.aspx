<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PhoneDirectory.aspx.cs" Inherits="SimpleBeautyWebsite.PhoneDirectory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="PhoneDirectoryDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="329px">
            <Columns>
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Number" HeaderText="Number" SortExpression="Number" />
                <asp:CheckBoxField DataField="ExDirectory" HeaderText="ExDirectory" InsertVisible="False" SortExpression="ExDirectory" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="PhoneDirectoryDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CO5027ConnectionString %>" DeleteCommand="DELETE FROM [PhoneDirectory] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Number] = @original_Number AND [ExDirectory] = @original_ExDirectory" InsertCommand="INSERT INTO [PhoneDirectory] ([Id], [Name], [Number], [ExDirectory]) VALUES (@Id, @Name, @Number, @ExDirectory)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [PhoneDirectory]" UpdateCommand="UPDATE [PhoneDirectory] SET [Name] = @Name, [Number] = @Number, [ExDirectory] = @ExDirectory WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Number] = @original_Number AND [ExDirectory] = @original_ExDirectory">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Number" Type="String" />
                <asp:Parameter Name="original_ExDirectory" Type="Boolean" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="Int32" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Number" Type="String" />
                <asp:Parameter Name="ExDirectory" Type="Boolean" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Number" Type="String" />
                <asp:Parameter Name="ExDirectory" Type="Boolean" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Number" Type="String" />
                <asp:Parameter Name="original_ExDirectory" Type="Boolean" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
