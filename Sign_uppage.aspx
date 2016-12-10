<%@ Page Title="" Language="C#" MasterPageFile="~/Home_masterpage.master" AutoEventWireup="true"
    CodeFile="Sign_uppage.aspx.cs" Inherits="Sign_uppage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table align="center" style="height: 497px; width: 429px;">
            <tr>
                <td align="center" colspan="2">
                    <h1>
                        SIGN UP NOW
                    </h1>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style10">
                    <h3>
                        Select User Type</h3>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="194px">
                        <asp:ListItem>SELECT USER</asp:ListItem>
                        <asp:ListItem>DEVELOPER</asp:ListItem>
                        <asp:ListItem>ORGANIZATION</asp:ListItem>
                        <asp:ListItem>ADMIN</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style10">
                    <h3>
                        &nbsp;</h3>
                    <h3>
                        User name</h3>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top" class="style5">
                    <asp:TextBox ID="TextBox_username" runat="server" Height="30px" Width="256px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox_username" ErrorMessage="Enter User Name" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style11">
                    <h3>
                        &nbsp;</h3>
                    <h3>
                        Password</h3>
                </td>
            </tr>
            <tr>
                <td colspan="2" valign="top" class="style1">
                    <asp:TextBox ID="TextBox_password" runat="server" Height="30px" Width="261px" TextMode="Password">
                    </asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox_password" ErrorMessage="Enter User Password" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2" align="left">
                    <asp:Button ID="Button_reset" class="button" runat="server" Text="Reset" Height="33px"
                        Width="109px" CausesValidation="False" OnClick="Button_reset_Click" />
                </td>
                <td class="style12" align="left">
                    <asp:Button ID="Button_submit" class="button" runat="server" Text="Submit" Height="33px"
                        Width="109px" OnClick="Button_submit_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" PostBackUrl="~/Developer_registration.aspx" 
                        runat="server" CausesValidation="False">Register As Developer</asp:LinkButton>
                </td>
                <td>
                    <asp:LinkButton ID="LinkButton2" CausesValidation="False" PostBackUrl="~/Organization_registration.aspx" runat="server">Register As Organization</asp:LinkButton>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
