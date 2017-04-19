<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SimpleBeautyWebsite.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSourceBooks" DefaultMode="Insert" Height="207px" Width="1209px">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            
            Author:
            <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
            
            ISBN:
            <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
            
            Publisher:
            <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
            
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            
            Author:
            <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
           
            ISBN:
            <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
            
            Publisher:
            <asp:TextBox ID="PublisherTextBox" runat="server" Text='<%# Bind("Publisher") %>' />
            
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />

            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
            
            Author:
            <asp:Label ID="AuthorLabel" runat="server" Text='<%# Bind("Author") %>' />
            
            ISBN:
            <asp:Label ID="ISBNLabel" runat="server" Text='<%# Bind("ISBN") %>' />
            
            Publisher:
            <asp:Label ID="PublisherLabel" runat="server" Text='<%# Bind("Publisher") %>' />
            
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            

        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceBooks" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:CO5027ConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [Id] = @original_Id AND [Title] = @original_Title AND [Author] = @original_Author AND [ISBN] = @original_ISBN AND [Publisher] = @original_Publisher AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))" InsertCommand="INSERT INTO [Books] ([Title], [Author], [ISBN], [Publisher], [Description]) VALUES (@Title, @Author, @ISBN, @Publisher, @Description)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [Title] = @Title, [Author] = @Author, [ISBN] = @ISBN, [Publisher] = @Publisher, [Description] = @Description WHERE [Id] = @original_Id AND [Title] = @original_Title AND [Author] = @original_Author AND [ISBN] = @original_ISBN AND [Publisher] = @original_Publisher AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Author" Type="String" />
            <asp:Parameter Name="original_ISBN" Type="String" />
            <asp:Parameter Name="original_Publisher" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Author" Type="String" />
            <asp:Parameter Name="ISBN" Type="String" />
            <asp:Parameter Name="Publisher" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_Title" Type="String" />
            <asp:Parameter Name="original_Author" Type="String" />
            <asp:Parameter Name="original_ISBN" Type="String" />
            <asp:Parameter Name="original_Publisher" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceBooks">
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
            <asp:BoundField DataField="Publisher" HeaderText="Publisher" SortExpression="Publisher" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Product.aspx?Id={0}" Text="View Book" />
        </Columns>
    </asp:GridView>
</asp:Content>
