<%@ Page Title="" Language="C#" MasterPageFile="~/Developer_masterpage.master" AutoEventWireup="true"
    CodeFile="Upadate_dev_profile.aspx.cs" Inherits="Upadate_dev_profile" %>

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
                <asp:Label ID="Label4" runat="server" Text="Label">GENDER</asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_gender" Height="29px" Width="157px" Text='<%#bind("gender") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label11" runat="server" Text="ADDRESS"></asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_address" Height="29px" Width="157px" Text='<%#bind("U_address") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label5" runat="server" Text="Label">COUNTRY</asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_country" Height="29px" Width="157px" Text='<%#bind("country") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label9" runat="server" Text="Label">CV</asp:Label>
            </td>
            <td align="center">
                <asp:FileUpload ID="FileUpload_cv" runat="server" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label6" runat="server" Text="Label">PREVIOUS EXPR.</asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_prevexpr" Height="29px" Width="157px" Text='<%#bind("prevexper") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label7" runat="server" Text="Label">CERIIFICATION</asp:Label>
            </td>
            <td align="center">
                <asp:TextBox ID="TextBox_certification" Height="29px" Width="157px" Text='<%#bind("certification") %>'
                    runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label8" runat="server" Text="Label">PHOTO</asp:Label>
            </td>
            <td align="center" class="style1">
                <asp:FileUpload ID="FileUpload_photo" runat="server" />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <asp:Button ID="Button4" runat="server" Text="Delete CV" class="button1" Height="30px"
                                Width="99px" onclick="Button4_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button3" runat="server" Text="Delete Image" class="button1" Height="30px"
                                Width="99px" OnClick="Button3_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Reset" class="button1" Height="30px"
                                Width="99px" onclick="Button1_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Upadte" class="button1" Height="30px"
                                Width="99px" OnClick="Button2_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
