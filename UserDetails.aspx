<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserDetails.aspx.cs" Inherits="UserDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" Runat="Server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="174px" Width="593px" AllowSorting="True" CellPadding="4" ForeColor="#333333">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="UserName" HeaderText="UserName" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" />
            <asp:BoundField DataField="Country" HeaderText="Country" />
            <asp:TemplateField HeaderText="Options">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButtonDelete" runat="server" OnClick="LinkButtonDelete_Click" OnClientClick ="return confirm('Are you sure?')">Delete</asp:LinkButton> | <a href ="EditUser.aspx?UserName=<%# Eval("UserName") %>">Edit</a>
                    <asp:HiddenField ID="HiddenFieldUsername" runat="server" Value='<%# Eval("UserName") %>' />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
        <SortedAscendingCellStyle BackColor="#FDF5AC" />
        <SortedAscendingHeaderStyle BackColor="#4D0000" />
        <SortedDescendingCellStyle BackColor="#FCF6C0" />
        <SortedDescendingHeaderStyle BackColor="#820000" />
    </asp:GridView>
    
</form>
</asp:Content>

