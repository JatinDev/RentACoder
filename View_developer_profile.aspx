<%@ Page Title="" Language="C#" MasterPageFile="~/Organization_masterpage.master"
    AutoEventWireup="true" CodeFile="View_developer_profile.aspx.cs" Inherits="View_developer_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table align="center" style="height: 466px; width: 713px">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_Name" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label3" runat="server" Text="Email ID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_Email_ID" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Contact NO."></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_Contact_NO" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_Gender" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label11" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_Address" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label2" runat="server" Text="Previous Experience"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_Previous_Experience" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label4" runat="server" Text="Qualification"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label_Qualification" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:Label ID="Label15" runat="server" Text="CV"></asp:Label>
                </td>
                <td style="margin-left: 40px">
                    <asp:LinkButton ID="LinkButton_cv" runat="server" OnClick="LinkButton_cv_Click">View</asp:LinkButton>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
