<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="ICCS_Canteen.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .auto-style10 {
        border-radius: 4px 4px;
        min-height: 450px;
        width: 998px;
        border: 2px solid #808080;
        margin: 10px;
        padding: 10px;
    }</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <br />
    <br />
    <fieldset class="auto-style10">
            <legend style="font-size: 25px; text-align:center" >Your Cart Item </legend>
            <br />

    <asp:Label ID="Label1" runat="server" Text="Product added to cart"></asp:Label>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/studhome.aspx">Continue order</asp:HyperLink>
    <br />
    <br />
      
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" EmptyDataText="Nothing in your cart" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="851px">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S No" />
            <asp:BoundField DataField="Fid" HeaderText="food id" />
            <asp:BoundField DataField="FoodName" HeaderText="Food Name" />
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Image">
                 <ItemTemplate>
                        <img src="images/<%#Eval("image") %>" style="width:50px;height:50px" />
                    </ItemTemplate>
             </asp:TemplateField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="total" HeaderText="Total Cost" />
            <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
            <asp:CommandField DeleteText="remove" SelectText="select" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" BackColor="Red" Height="36px" OnClick="Button1_Click" Text="Confirm Order" Width="112px" />
    <br />
    <br />

   </fieldset>

</asp:Content>
