<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CreativeMaster.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
    <div style="display:flex; align-items:center; padding-top: 30px;">
    <div style="margin-right:10px;">
        <asp:Label ID="txtUserName" runat="server" Text="User Name"></asp:Label>
        <asp:TextBox ID="txtuser" runat="server" style="margin-right: 10px;"></asp:TextBox>
    </div>
    <div style="margin-right:10px;">
        <asp:Label ID="txtProductName" runat="server" Text="Product Name"></asp:Label>
        <asp:TextBox ID="txtproduct" runat="server" style="margin-right: 10px;"></asp:TextBox>
    </div>
    <div style="margin-right:10px;">
        <asp:Label ID="txtProductID" runat="server" Text="Product ID"></asp:Label>
        <asp:TextBox ID="txtproid" runat="server" style="margin-right: 10px;"></asp:TextBox>
    </div>
    <div style="margin-right:10px;">
        <asp:Label ID="txtCategoryName" runat="server" Text="Category Name"></asp:Label>
        <asp:TextBox ID="txtctename" runat="server" style="margin-right: 10px;"></asp:TextBox>
    </div>
    <div style="margin-right:10px;">
        <asp:Button ID="btnfind" runat="server" Text="Find" style="margin-right: 10px;" OnClick="btnfind_Click" />
    </div>
    <div>
        <asp:Button ID="btnall" runat="server" Text="Show All Data" OnClick="btnall_Click" />
    </div>
</div>

<div style="margin-top: 10px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  OnPageIndexChanging="GridView1_PageIndexChanging1" PageSize="10" AllowPaging="true">
        <Columns>
            <asp:TemplateField HeaderText="Sno">
                 <ItemTemplate>
                           <%#Container.DataItemIndex+1 %>                         
                        </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Category_Name" HeaderText="Category Name" />
            <asp:BoundField DataField="Product_Details" HeaderText="Profduct Discription " />
            <asp:BoundField DataField="User_Name" HeaderText="User Name" />
            <asp:BoundField DataField="User_Id" HeaderText="User ID" />
            <asp:BoundField DataField="Product_Id" HeaderText="Product ID" />
            <asp:BoundField DataField="Product_Name" HeaderText="Product Name" />
            <asp:TemplateField HeaderText="EDIT">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" Text="Edit" PostBackUrl="/Modify.aspx" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:Button ID="Button2" runat="server" Text="Delete" PostBackUrl="~/Delete.aspx" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <br />
</div>



   
    </asp:Content>
