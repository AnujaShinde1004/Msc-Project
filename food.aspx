<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="food.aspx.cs" Inherits="ICCS_Canteen.food" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style4 {
            margin-left: 27px;
        }
        .auto-style5 {
            margin-left: 56px;
        }
        .auto-style6 {
            margin-left: 55px;
        }
        .auto-style8 {
            margin-left: 24px;
        }
 .container {
    width: 1100px;
    height: auto;
    margin: auto;
    background-color: #FFFFFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
    <div align="center">


        I<asp:Label ID="Label1" runat="server" Text="Food name"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtfoodname" runat="server" CausesValidation="True" Width="154px" CssClass="auto-style4" Height="24px"></asp:TextBox>
    <br />
    <br />
    &nbsp;<asp:Label ID="Label2" runat="server" Text="Category"></asp:Label>
    <asp:DropDownList ID="categoryDD" runat="server" Height="39px" Width="166px" CssClass="auto-style5">
         <asp:ListItem Value="">Please Select</asp:ListItem>  
            <asp:ListItem>Snacks and ColdDrink</asp:ListItem>  
            <asp:ListItem>Breackfast</asp:ListItem>  
            <asp:ListItem>Veg</asp:ListItem> 
            <asp:ListItem>Non-veg</asp:ListItem>  
            <asp:ListItem>Ice-Cream</asp:ListItem>  
    </asp:DropDownList>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" Text="Upload image"></asp:Label>
    <asp:FileUpload ID="imagefupload" runat="server" CssClass="auto-style8" Height="32px" />
    <br />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Prize"></asp:Label>
    <asp:TextBox ID="txtprize" runat="server" CssClass="auto-style6" Height="24px"></asp:TextBox>
    <br />
    <br />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="addbutton" runat="server" OnClick="addbutton_Click1" Text="add" BackColor="#66FF99" Width="48px" />
    &nbsp;
        <asp:Button ID="updateBtn" runat="server" OnClick="updateBtn_Click" Text="Update" BackColor="#99FFCC" />
    &nbsp;
        <asp:Button ID="DeleteBtn" runat="server" BackColor="Aqua" OnClick="DeleteBtn_Click" Text="Delete" />
&nbsp;
        <asp:Button ID="Searchbtn" runat="server" OnClick="Searchbtn_Click" Text="Search" />
        <br />
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    <br />
    Fodd Item
        <br />
        <asp:GridView ID="foodgrid" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="472px" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="FoodName" HeaderText="Food name" />
                <asp:BoundField DataField="Category" HeaderText="categeory" />
                <asp:BoundField DataField="Price" HeaderText="price" />
                <asp:TemplateField HeaderText="Image">
                    <ItemTemplate>
                        <img src="images/<%#Eval("image") %>" style="width:20px;height:20px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
    <br />

</div>

</div>


</asp:Content>
