<%@ Page Title="" Language="C#" MasterPageFile="~/Home_masterpage.master" AutoEventWireup="true"
    CodeFile="~/Search_developer.aspx.cs" Inherits="Search_developer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 88px;
        }
        .style2
        {
            width: 96px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
            <td align="center" valign="top" colspan="2">
                <h1>
                    Search Developer</h1>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table>
                    <tr valign="top">
                        <td valign="top" colspan="3" align="center">
                            <h2>
                                SEARCH BY</h2>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            NAME
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_name" runat="server" Width="181px" Height="30px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            OR BY
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            CONTACT NO.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_contactno" runat="server" Width="181px" Height="30px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            OR BY
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            COUNTRY
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_country" runat="server" Width="181px" Height="30px"></asp:TextBox>
                            <br />
                            <br />
                            OR BY<br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            EXPERIENCE
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_expr" runat="server" Width="181px" Height="30px"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Button class="button" ID="Button_search" runat="server" Text="SEARCH" Height="26px"
                                Width="82px" OnClick="Button_search_Click" />
                        </td>
                        <td class="style2">
                            <asp:Button ID="Button_getall" class="button" runat="server" Text="Get all" Height="26px"
                                OnClick="Button_getall_Click" Width="82px" />
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table width="100%">
                    <tr>
                        <td colspan="8" valign="top">
                            <asp:DataList ID="DataList1" runat="server" Height="30px" CellPadding="4" Width="506px"
                                ForeColor="#333333" OnItemCommand="DataList1_ItemCommand">
                                <AlternatingItemStyle BackColor="White" />
                                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="50px"
                                    VerticalAlign="Top" Width="900px" />
                                <ItemStyle BackColor="#EFF3FB" Height="30px" Width="30px" />
                                <ItemTemplate>
                                    <table width="100%">
                                        <tr>
                                            <td rowspan="6" width="20%">
                                                <asp:Image ID="Image_developer" ImageUrl='<%#bind("dev_photo") %>' runat="server"
                                                    Width="150" Height="140" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="80%">
                                                <table border="0" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td align="left">
                                                            <asp:Label ID="Label_name" runat="server" Text='<%#bind("devname") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:Label ID="Label_EMAILID" runat="server" Text='<%#bind("emailid") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:Label ID="Label_address" runat="server" Text='<%#bind("contactno") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:Label ID="Label_country" runat="server" Text='<%#bind("U_address") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:Label ID="Label_website" runat="server" Text='<%#bind("country") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:Label ID="Label_INDUS_TYPE" runat="server" Text='<%#bind("prevexper") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center">
                                                            <asp:Label ID="Label1" runat="server" Text='<%#bind("certification") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" CommandArgument='<%#bind("devid") %>' CommandName="Like"
                                                                runat="server">Like</asp:LinkButton>(<asp:Label ID="Label2" runat="server" Text='<%#bind("U_like") %>'></asp:Label>)
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="2" height="10">
                                                            <hr />
                                                        </td>
                                                    </tr>
                                                </table>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            </asp:DataList>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>
