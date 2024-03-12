<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Insert.aspx.cs" Inherits="CreativeMaster.Insert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
 <div style="width: 50%; margin: auto; padding: 20px; border: 1px solid #ccc; border-radius: 5px; background-color: #f9f9f9;">
    <p style="margin: 10px 0;">
        <label for="TextBox1" style="font-weight: bold;">User_Id:</label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" style="width: calc(100% - 20px); padding: 10px; margin: 5px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;" ></asp:TextBox>
    </p>
    <p style="margin: 10px 0;">
        <label for="TextBox2" style="font-weight: bold;">User_Name:</label>
        <asp:TextBox ID="TextBox2" runat="server" style="width: calc(100% - 20px); padding: 10px; margin: 5px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"></asp:TextBox>
    </p>
    <p style="margin: 10px 0;">
        <label for="TextBox3" style="font-weight: bold;">Product_Id:</label>
        <asp:TextBox ID="TextBox3" runat="server" style="width: calc(100% - 20px); padding: 10px; margin: 5px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"></asp:TextBox>
    </p>
    <p style="margin: 10px 0;">
        <label for="TextBox4" style="font-weight: bold;">Product_Name:</label>
        <asp:TextBox ID="TextBox4" runat="server" style="width: calc(100% - 20px); padding: 10px; margin: 5px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"></asp:TextBox>
    </p>
    <p style="margin: 10px 0;">
        <label for="TextBox5" style="font-weight: bold;">Product_Details:</label>
        <asp:TextBox ID="TextBox5" runat="server" style="width: calc(100% - 20px); padding: 10px; margin: 5px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"></asp:TextBox>
    </p>
    <p style="margin: 10px 0;">
        <label for="TextBox6" style="font-weight: bold;">Category_Name:</label>
        <asp:TextBox ID="TextBox6" runat="server" style="width: calc(100% - 20px); padding: 10px; margin: 5px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"></asp:TextBox>
    </p>
    <p style="margin: 10px 0;">
        <label for="TextBox7" style="font-weight: bold;">Category_ID:</label>
        <asp:TextBox ID="TextBox7" runat="server" style="width: calc(100% - 20px); padding: 10px; margin: 5px 0; border: 1px solid #ccc; border-radius: 4px; box-sizing: border-box;"></asp:TextBox>
    </p>
    <p style="margin: 10px 0;">
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" style="background-color: #4caf50; color: white; cursor: pointer; padding: 10px; border: none; border-radius: 4px; width: calc(100% - 20px); box-sizing: border-box;" OnClick="btnsubmit_Click" />
    </p>
</div>
  

    
</asp:Content>
