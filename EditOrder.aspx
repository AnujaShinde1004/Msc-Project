<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="ICCS_Canteen.EditOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 42%;
        height: 267px;
    }
    .auto-style10 {
        height: 23px;
    }
    .auto-style11 {
        width: 181px;
    }
    .auto-style12 {
        height: 23px;
        width: 181px;
    }
    .auto-style13 {
        width: 181px;
        height: 24px;
    }
    .auto-style14 {
        height: 24px;
    }
    .auto-style10 {
        border-radius: 4px 4px;
        min-height: 450px;
        width: 998px;
        border: 2px solid #808080;
        margin: 10px;
        padding: 10px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <fieldset class="auto-style10">
            <legend style="font-size: 25px; text-align:center" >Edit Order</legend>
            <br />
    <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="Red" Text="Modify cart"></asp:Label>
<br />
<table border="1" class="auto-style9">
    <tr>
        <td class="auto-style13">S.No</td>
        <td class="auto-style14">
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Fid</td>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Food Name</td>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Category</td>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Price</td>
        <td class="auto-style10">
            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">Image</td>
        <td class="auto-style10">
            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Quantity</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Height="26px" OnTextChanged="TextBox1_TextChanged" Width="81px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Total</td>
        <td>
            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" BackColor="Blue" Height="32px" OnClick="Button1_Click" Text="Save" Width="71px" />
        </td>
    </tr>
</table>
         </fieldset>
</asp:Content>
