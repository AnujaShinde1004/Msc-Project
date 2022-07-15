<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="ICCS_Canteen.OrderDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 42%;
            height: 70px;
        }
        .auto-style5 {
            width: 149px;
        }
        .auto-style6 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="View order detail" Font-Bold="True" ForeColor="#FF0066"></asp:Label>
    <br />
    <br />
    <br />

    <table class="auto-style4" border="1">
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Select Order Id" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="152px" CssClass="auto-style6" DataSourceID="SqlDataSource1" DataTextField="orderid" DataValueField="orderid">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="#FF9966" Height="29px" Text="View Order Detail" Width="138px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

    <br />

    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" ForeColor="Black" Height="66px" Visible="False" Width="675px">
        <Columns>
            <asp:BoundField DataField="orderid" HeaderText="OrderId" SortExpression="orderid" />
            <asp:BoundField DataField="sno" HeaderText="SNO" SortExpression="sno" />
            <asp:BoundField DataField="Fid" HeaderText="Food id" SortExpression="Fid" />
            <asp:BoundField DataField="FoodName" HeaderText="FoodName" SortExpression="FoodName" />
            <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity" />
            <asp:BoundField DataField="dateoforder" HeaderText="Date of Order" SortExpression="dateoforder" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:canteenConnectionString %>" SelectCommand="SELECT DISTINCT * FROM [ordertbl]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:canteenConnectionString %>" SelectCommand="SELECT * FROM [ordertbl] WHERE ([orderid] = @orderid)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="orderid" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>
