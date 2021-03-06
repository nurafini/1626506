﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Mymasterpage.Master" AutoEventWireup="true" CodeBehind="ProductPage.aspx.cs" Inherits="SimpleBeautyWebsite.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <asp:Image ID="Productimage" runat="server" />
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" DataSourceID="DisplayProductForm" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            <p>
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            </p>
            <p>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            </p>
            <p>
            Brand:
            <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
            </p>
            <p>
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
            </p>
            <p>
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            </p>
            <p>
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            </p>
            <p>
            Stock:
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
            </p>   
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <p>
            ID:
            <asp:TextBox ID="IDTextBox" runat="server" Text='<%# Bind("ID") %>' />
            </p>
            <p>
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            </p>
            <p>
            Brand:
            <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>' />
            </p>
            <p>
            Type:
            <asp:TextBox ID="TypeTextBox" runat="server" Text='<%# Bind("Type") %>' />
            </p>
            <p>
            Description:
            <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
            </p>
            <p>
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            </p>
            <p>
            Stock:
            <asp:TextBox ID="StockTextBox" runat="server" Text='<%# Bind("Stock") %>' />
            </p>
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <p>
            ID:
            <asp:Label ID="IDLabel" runat="server" Text='<%# Eval("ID") %>' />
            </p>
            <p>
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
            </p>
            <p>
            Brand:
            <asp:Label ID="BrandLabel" runat="server" Text='<%# Bind("Brand") %>' />
            </p>
            <p>
            Type:
            <asp:Label ID="TypeLabel" runat="server" Text='<%# Bind("Type") %>' />
            </p>
            <p>
            Description:
            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
            </p>
            <p>
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            </p>
            <p>
            Stock:
            <asp:Label ID="StockLabel" runat="server" Text='<%# Bind("Stock") %>' />
            </p>
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="DisplayProductForm" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626506_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    </asp:Content>
