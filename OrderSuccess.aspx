<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="OrderSuccess.aspx.cs" Inherits="ICCS_Canteen.OrderSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
      .auto-style10 {
        border-radius: 4px 4px;
        min-height: 450px;
        width: 998px;
        border: 2px solid #808080;
        margin: 10px;
        padding: 10px;
    }
        .auto-style11 {
            width: 100%;
            height: 383px;
        }
        .auto-style12 {
            height: 29px;
            text-align:center
        }
        .auto-style13 {
            height: 71px;
        }
        .auto-style14 {
            width: 100%;
            height: 37px;
        }
        .auto-style15 {
            width: 462px;
            height: 46px;
        }
        .auto-style17 {
            height: 49px;
        }
        .auto-style18 {
            height: 62px;
        }
        .auto-style19 {
            height: 46px;
        }
        .auto-style20 {
            height: 45px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <fieldset class="auto-style10">
            <legend style="font-size: 25px; text-align:center" >Done</legend>
            <br />
    <asp:Label ID="Label2" runat="server" Text="Congratulations"></asp:Label><br />
    <asp:Label ID="Label1" runat="server" Text="Your Order Has Been Placed Successfully" Font-Size="Larger"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" BackColor="#FF9900" Height="38px" OnClick="Button1_Click" Text="dawnload invoice" />
            <br />
            <br />
            Order Id:-
            <asp:Label ID="Label3" runat="server" Font-Size="Large" Font-Underline="True"></asp:Label>
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="405px">
                <table class="auto-style11" border="1">
                    <tr>
                        <td class="auto-style12"> Retail Invoice</td>
                    </tr>
                    <tr>
                        <td class="auto-style13">Order No:-<asp:Label ID="Label4" runat="server" Font-Size="Large" Font-Underline="True"></asp:Label>
                            <br />
                            Order Date:-<asp:Label ID="Label5" runat="server" Font-Bold="True"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">
                            <table border="1" class="auto-style14">
                                <tr>
                                    <td class="auto-style15">Buyer Name:-&nbsp;&nbsp; <asp:Label ID="Label6" runat="server" Font-Bold="True"></asp:Label>
                                    </td>
                                    <td class="auto-style19">Seller:-&nbsp; Name
                                        <asp:Label ID="Label7" runat="server" Text="ICCS Canteen"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="998px" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="SNo" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Fid" HeaderText="Food Id" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="FoodName" HeaderText="Food Name" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Category" HeaderText="Category" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Price" HeaderText="Price" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="total" HeaderText="Total Price" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">Grand Total:-<asp:Label ID="Label8" runat="server" Font-Strikeout="False" ForeColor="Maroon"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style20">Declarelation:-&nbsp; Computer generate invoice.</td>
                    </tr>
                </table>
            </asp:Panel>
         </fieldset>
</asp:Content>
