<%@ Page Title="" Language="C#" MasterPageFile="~/Home_masterpage.master" AutoEventWireup="true"
    CodeFile="Contact_us.aspx.cs" Inherits="Contact_us" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="height: 618px; width: 721px">
        <tr>
            <td colspan="2" align="center" class="style5">
                <h1>
                    CONTACT US
                </h1>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_name" runat="server" Height="37px" Width="189px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="#CC0000"
                    ErrorMessage="Enter Your Name" ControlToValidate="TextBox_name"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label3" runat="server" Text="TITLE"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox_title" runat="server" Height="34px" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style4">
                <asp:Label ID="Label2" runat="server" Text="WHOM TO CONTACT"></asp:Label>
            </td>
            <td class="style6">
                <asp:TextBox ID="TextBox_wtc" runat="server" Height="38px" Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="#CC0000"
                    ErrorMessage="Whom To Contact" ControlToValidate="TextBox_wtc"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="WHAT DO YOU WANT TO SAY"></asp:Label>
            </td>
            <td class="style7">
                <asp:TextBox ID="TextBox_say" runat="server" Height="107px" TextMode="MultiLine"
                    Width="290px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="#CC0000"
                    ErrorMessage="Enter Your Content" ControlToValidate="TextBox_say"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Button ID="Button_reset" class="button" runat="server" Text="Reset" Height="28px"
                    Width="110px" CausesValidation="False" OnClick="Button_reset_Click" />
            </td>
            <td>
                <asp:Button ID="Button_submit" class="button" runat="server" Text="Submit" Height="28px"
                    Width="110px" OnClick="Button_submit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
