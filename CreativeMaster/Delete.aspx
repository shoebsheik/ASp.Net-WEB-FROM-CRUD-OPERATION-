<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="CreativeMaster.Delete" %>
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
 <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="true" PageSize="10" OnPageIndexChanging="GridView1_PageIndexChanging">
    <Columns>
        <asp:TemplateField HeaderText="Sno">
            <ItemTemplate>
                           <%#Container.DataItemIndex+1 %>                         
                        </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Product ID">
            <ItemTemplate>
                <asp:TextBox ID="txtpid" runat="server" Text='<%# Eval("Product_Id") %>'></asp:TextBox>                        
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="UserName">
            <ItemTemplate>
                <asp:TextBox ID="txtuname" runat="server" Text='<%# Eval("User_Name") %>'></asp:TextBox>                          
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Category Name">
            <ItemTemplate>
                <asp:TextBox ID="txtcatname" runat="server" Text='<%# Eval("Category_Name") %>'></asp:TextBox>                          
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Product Discription" >
            <ItemTemplate>
                <asp:TextBox ID="txtpdis" runat="server" Text='<%# Eval("Product_Details") %>'></asp:TextBox>                          
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Product Name">
            <ItemTemplate>
                <asp:TextBox ID="txtpname" runat="server" Text='<%# Eval("Product_Name") %>'></asp:TextBox>                         
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="User ID">
            <ItemTemplate>
                <asp:TextBox ID="txtuserid" runat="server" Text='<%# Eval("User_Id") %>'></asp:TextBox>                         
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Edit">
            <ItemTemplate>
                <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />                         
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
    </div>
</asp:Content>
