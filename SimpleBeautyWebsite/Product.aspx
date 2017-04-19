<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="SimpleBeautyWebsite.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSourceViewBooks2" GridLines="Both" Height="203px" Width="591px">
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
        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
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
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSourceViewBooks2" runat="server" ConnectionString="<%$ ConnectionStrings:CO5027ConnectionString %>" SelectCommand="SELECT * FROM [Books] WHERE ([Id] = @Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
