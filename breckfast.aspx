<%@ Page Title="" Language="C#" MasterPageFile="~/mainMaster.Master" AutoEventWireup="true" CodeBehind="breckfast.aspx.cs" Inherits="ICCS_Canteen.breckfast" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
           <style>      
.fieldsetmain {
    width:700px;
    border: 2px solid #808080;
    border-radius: 4px 4px;
    padding: 10px 10px;
    margin: 10px 10px;
    min-height: 450px;
}
    .auto-style10 {
        border-radius: 4px 4px;
        min-height: 450px;
        width: 997px;
        border: 2px solid #808080;
        margin: 10px;
        padding: 10px;
    }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <fieldset class="auto-style10">
            <legend style="font-size: 25px; text-align:center" >Breckfast</legend>
            <br />
           No Of Product In Your Cart :-
            <asp:Label ID="Label11" runat="server" Font-Size="Larger" ForeColor="Black" Height="26px" Width="67px"></asp:Label>
&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/cart.aspx">Show cart</asp:HyperLink>
            <br />
            <br />
            <asp:DataList ID="dtlist" runat="server" DataKeyField="FoodName"  Height="468px" RepeatColumns="3" RepeatDirection="Horizontal" Width="1029px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnItemCommand="dtlist_ItemCommand">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#F7F7DE" />
                <ItemTemplate>
                    <table border="0" class="auto-style11">
                        <tr>
                            <td class="auto-style15">
                               Food ID:- <asp:Label ID="Label10" runat="server" Text='<%# Eval("Fid") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style15">Food Name:-&nbsp;
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("FoodName") %>' Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14">category:-<asp:Label ID="Label8" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style13">Price:<asp:Label ID="Label9" runat="server" Text='<%# Eval("Price") %>' Font-Italic="False" Font-Size="Larger" Font-Underline="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style12">
                                <asp:Image ID="Image2" runat="server" Height="85px" ImageUrl='<%# Eval("image","~/images/{0}") %>' Width="153px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style16">Quantity:<asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="81px">1</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" BackColor="#CC3300" CommandArgument='<%#Eval("Fid")%>'  Height="32px" Text="Add to Cart" Width="77px" CommandName="addtocart" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:canteenConnectionString %>" SelectCommand="SELECT * FROM [FoodTb1]"></asp:SqlDataSource>

</fieldset>

</asp:Content>
