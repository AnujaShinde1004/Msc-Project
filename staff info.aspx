<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="staff info.aspx.cs" Inherits="ICCS_Canteen.staff_info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
       
         
       
         
       
         
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Staff Detail</h1>
     <table ><tr>
            <td>

                SName</td>
            <td>
                <asp:TextBox ID="sname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="sname" ErrorMessage="Enter Staff Name"></asp:RequiredFieldValidator>
            </td>

        </tr>
        <tr>
            <td >
                Email</td>
            <td >
                <asp:TextBox ID="email" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Contact</td>
            <td >
                <asp:TextBox ID="contact" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter valid phone number" MaximumValue="9" MinimumValue="11" ControlToValidate="contact"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>
                Password</td>
            <td >
                <asp:TextBox ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="pass" ErrorMessage="enter password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td ></td>
            <td>
                <asp:Button ID="btn1" runat="server" BackColor="#66FFFF" Text="Add" Width="68px" OnClick="btn1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btn2" runat="server" OnClick="btn2_Click" Text="Delete" />
            </td>
        </tr>
    </table>
    <asp:GridView ID="staffgrid" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="156px" Width="409px">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

</asp:Content>
