<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

  
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" Runat="Server">
     <div id="box">
         <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">User Name</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUN" ErrorMessage="User Name required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Email</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxEml" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxEml" ErrorMessage="Email required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEml" ErrorMessage="Provide valid Email-ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxPwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxPwd" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxCPwd" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPwd" ControlToValidate="TextBoxCPwd" ErrorMessage="Password did not match" ForeColor="Red"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxCPwd" ErrorMessage="Confirm Password required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Country</td>
                <td class="auto-style6">
                    <asp:DropDownList ID="DropDownListCntry" runat="server" Width="180px">
                        <asp:ListItem>Select </asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>Germany</asp:ListItem>
                        <asp:ListItem>Usa</asp:ListItem>
                        <asp:ListItem>France</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownListCntry" ErrorMessage="Country required" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Button ID="ButtonSubmit" runat="server" OnClick="ButtonSubmit_Click" Text="Submit" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="LabelMessage" runat="server" Text="Message" Visible="False"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
         </div>
</asp:Content>

