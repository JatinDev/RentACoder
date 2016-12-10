<%@ Page Title="" Language="C#" MasterPageFile="~/Organization_masterpage.master"
    AutoEventWireup="true" CodeFile="Update_org_profile.aspx.cs" Inherits="Update_org_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td align="right">
                <asp:Label ID="Label3" runat="server" Text="Label">EMAIL ID</asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_email" Text='<%#bind("emailid") %>' runat="server" Height="29px"
                    Width="157px"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label10" runat="server" Text="CONTACT NO"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_contact" Height="29px" Width="157px" Text='<%#bind("contactno") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label4" runat="server" Text="Label">ADDRESS</asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_gender" Height="29px" Width="157px" Text='<%#bind("orgaddress") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label11" runat="server" Text="COUNTRY"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_address" Height="29px" Width="157px" Text='<%#bind("country") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label5" runat="server" Text="Label">WEBSITE</asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_country" Height="29px" Width="157px" Text='<%#bind("website") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label6" runat="server" Text="Label">INDUSTRY TYPE</asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_prevexpr" Height="29px" Width="157px" Text='<%#bind("Industry_type") %>'
                    runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
                <br />
            </td>
        </tr>
     
        <tr>
            <td align="right">
                
                <asp:Button ID="Button1" runat="server" Text="Reset" class="button1" Height="30px"
                    Width="99px" onclick="Button1_Click" />
            </td>
            <td align="center">
                <asp:Button ID="Button2" runat="server" Text="Upadte" class="button1" Height="30px"
                    Width="99px" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
