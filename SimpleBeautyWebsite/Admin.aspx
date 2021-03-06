﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="SimpleBeautyWebsite.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="207px" Width="1209px">
        <EditItemTemplate>
            ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />    
            Brand:
            <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />    
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />       
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />  
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            Stock:
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />     
        </EditItemTemplate>
        <InsertItemTemplate>
           ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />     
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />    
            Brand:
            <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />    
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            Stock:
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' /> 
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />        
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />  
            Brand:
            <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />  
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            Stock:
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
        </ItemTemplate>
    </asp:FormView>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="739px">
        <Columns>
            <asp:TemplateField ShowHeader="False" HeaderText="Edit">
                <EditItemTemplate>
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" OnClientClick="return confirm('Changes to record is saved successfully')"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="CancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ProductPage.aspx?Id={0}" Text="View" HeaderText="Product Page" />
            <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="ImageUpload.aspx?ID={0}" HeaderText="Image" Text="Upload" />
            <asp:TemplateField ShowHeader="False" HeaderText="Delete Product">
                <ItemTemplate>
                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure to delete this record?')"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626506_co5027_asgConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Products]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Products] WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Brand] = @original_Brand AND [Type] = @original_Type AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Price] = @original_Price AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL)) " InsertCommand="INSERT INTO [Products] ([ID], [Name], [Brand], [Type], [Description], [Price], [Stock]) VALUES (@ID, @Name, @Brand, @Type, @Description, @Price, @Stock)" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Brand] = @Brand, [Type] = @Type, [Description] = @Description, [Price] = @Price, [Stock] = @Stock WHERE [ID] = @original_ID AND [Name] = @original_Name AND [Brand] = @original_Brand AND [Type] = @original_Type AND (([Description] = @original_Description) OR ([Description] IS NULL AND @original_Description IS NULL)) AND [Price] = @original_Price AND (([Stock] = @original_Stock) OR ([Stock] IS NULL AND @original_Stock IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Brand" Type="String" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Stock" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Brand" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Stock" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Brand" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Stock" Type="Int32" />
            <asp:Parameter Name="original_ID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Brand" Type="String" />
            <asp:Parameter Name="original_Type" Type="String" />
            <asp:Parameter Name="original_Description" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Stock" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
