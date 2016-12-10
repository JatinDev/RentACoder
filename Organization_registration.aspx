<%@ Page Title="" Language="C#" MasterPageFile="~/Home_masterpage.master" AutoEventWireup="true"
    CodeFile="Organization_registration.aspx.cs" Inherits="Organization_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table align="center" style="height: 700px">
            <tr>
                <td align="center" colspan="2">
                    <h1 style="font-family: 'Arial Rounded MT Bold'">
                        Organization Registration</h1>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Name*" Height="26px" Width="166px"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_orgname" Height="26px" Width="166px" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_orgname"
                        ErrorMessage="Name cannot be blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Password*" Height="26px" Width="166px"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_passowrd" Height="26px" Width="166px" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_passowrd"
                        ErrorMessage="password cannot be blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password*" Height="26px" Width="166px"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_confirmpassword" runat="server" TextMode="Password" Height="26px"
                        Width="166px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_confirmpassword"
                        ErrorMessage="Plesae confirm password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_passowrd"
                        ControlToValidate="TextBox_confirmpassword" ErrorMessage="password Does Not match"
                        ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Email Id"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_email_id" runat="server" Height="26px" Width="166px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_email_id"
                        ErrorMessage="Not a valid Id" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Contact No."></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_contact_no" runat="server" Height="26px" Width="166px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_address" runat="server" TextMode="MultiLine" Width="230px"
                        Height="74px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="132px">
                        <asp:ListItem>Select country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>North America</asp:ListItem>
                        <asp:ListItem>South America</asp:ListItem>
                        <asp:ListItem>Africa</asp:ListItem>
                        <asp:ListItem>Shri Lanka</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>Europe</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Website"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_website" runat="server" Height="26px" Width="166px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox_website"
                        ErrorMessage="Enter Youy Company Website" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_website"
                        ForeColor="#CC0000" ErrorMessage="Not a Valid Website" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Industry Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>Select Industry</asp:ListItem>
                        <asp:ListItem>TECHNICAL</asp:ListItem>
                        <asp:ListItem>BUISNESS</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label11" runat="server" Text="Date Of Registration"></asp:Label>
                </td>
                <td class="style1">
                    <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Button ID="Button_reset" class="button" runat="server" Text="Reset" Height="26px"
                        Width="87px" CausesValidation="False" OnClick="Button_reset_Click" />
                </td>
                <td class="style1" align="left">
                    <asp:Button ID="Button_submit" runat="server" class="button" Text="Submit" Height="26px"
                        Width="87px" OnClick="Button_submit_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/Sign_uppage.aspx">Or You Already Have An Account</asp:LinkButton>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
