<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="ICCS_Canteen.PlaceOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 41%;
            height: 88px;
        }
        .auto-style10 {
            width: 189px;
        }
        .auto-style11 {
            width: 39%;
            height: 74px;
        }
        .auto-style12 {
            width: 282px;
        }
        .auto-style13 {
            width: 596px;
        }
        .auto-style14 {
            margin-left: 26px;
        }
          .bc {
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

     <fieldset class="bc">
            <legend style="font-size: 25px; text-align:center" >Place Your Order</legend>
            <br />

    <table class="auto-style9">
        <tr>
            <td class="auto-style10">Order Id</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Order detail</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <br />


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ShowFooter="True">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="SNO" />
            <asp:BoundField DataField="Fid" HeaderText="Fid" />
            <asp:BoundField DataField="FoodName" HeaderText="Food Name" />
            <asp:BoundField DataField="Category" HeaderText="Category" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Image">
                 <ItemTemplate>
                        <img src="images/<%#Eval("image") %>" style="width:50px;height:50px" />
                    </ItemTemplate>
             </asp:TemplateField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="total" HeaderText="Toatl Price" />
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
    <table class="auto-style11">
        <tr>
            <td class="auto-style12">Type your Name </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" Height="33px" Width="138px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter Name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Mobile Number</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="138px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />


    <asp:Button ID="Button1" runat="server" BackColor="#0033CC" Height="40px" OnClick="Button1_Click" Text="Place Order" Width="112px" />


&nbsp;<asp:Button ID="Button2" runat="server" BackColor="Blue" CssClass="auto-style14" Height="41px" OnClick="Button2_Click" Text="Back" Width="96px" />

</fieldset>
</asp:Content>
