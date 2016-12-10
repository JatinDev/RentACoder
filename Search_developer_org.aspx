<%@ Page Title="" Language="C#" MasterPageFile="~/Organization_masterpage.master"
    AutoEventWireup="true" CodeFile="Search_developer_org.aspx.cs" Inherits="Search_developer_org" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
            <td colspan="3">
                <h1>
                    Search Developer
                </h1>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <table width="100%">
                    <tr>
                        <td colspan="2">
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
                        <td align="left" colspan="2">
                            OR BY
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="style1">
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
                        <td align="left" colspan="2">
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
                        <td>
                            <asp:Button ID="Button_search" class="button" Width="82px" runat="server" Text="SEARCH"
                                OnClick="Button_search_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button_getall" class="button" runat="server" Text="Get all" OnClick="Button_getall_Click"
                                Width="82px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table width="100%">
                    <tr>
                        <td colspan="8">
                            <asp:DataList ID="DataList1" runat="server" Height="16px" CellPadding="4" Width="504px"
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
                                                    Width="150" Height="150" />
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
                                                            <asp:Label ID="Label2" runat="server" Text='<%#bind("U_like") %>'></asp:Label>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" CommandArgument='<%#bind("devid") %>' CommandName="Like"
                                                                runat="server">Like</asp:LinkButton>
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
