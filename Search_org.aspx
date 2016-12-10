<%@ Page Title="" Language="C#" MasterPageFile="~/Home_masterpage.master" AutoEventWireup="true"
    CodeFile="Search_org.aspx.cs" Inherits="Search_org" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
            <td align="center" valign="top" colspan="2">
                <h1>
                    Search Organization</h1>
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
                            <asp:TextBox ID="TextBox_name" runat="server" Width="230px" Height="36px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            OR BY
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            CONTACT NO.
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_contactno" runat="server" Width="230px" Height="36px"></asp:TextBox>
                            <br />
                            <br />
                            OR BY
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            COUNTRY
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_country" runat="server" Width="230px" Height="36px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            OR BY
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            &nbsp;INDUSTRY TYPE
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_Industry_type" runat="server" Width="230px" Height="36px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button_search" class="button1" runat="server" Text="SEARCH" Height="26px"
                                Width="82px" OnClick="Button_search_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button_getall" runat="server" class="button1" Text="Get all" Height="26px"
                                OnClick="Button_getall_Click" Width="82px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <asp:DataList ID="DataList1" runat="server" Height="456px" CellPadding="4" Width="624px"
                    ForeColor="#333333">
                    <AlternatingItemStyle BackColor="White" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="50px"
                        VerticalAlign="Top" Width="900px" />
                    <ItemStyle BackColor="#EFF3FB" Height="50px" VerticalAlign="Top" Width="900px" />
                    <HeaderTemplate>
                        <table width="100%">
                            <tr>
                                <td width="20%">
                                    <asp:Label ID="Label2" runat="server" Text="ORGANIZATION NAME"></asp:Label>
                                </td>
                                <td width="10%">
                                    <asp:Label ID="Label3" runat="server" Text="EMAIL ID"></asp:Label>
                                </td>
                                <td width="10%">
                                    <asp:Label ID="Label4" runat="server" Text="CONTACT NO."></asp:Label>
                                </td>
                                <td width="20%">
                                    <asp:Label ID="Label5" runat="server" Text="ADDRESS"></asp:Label>
                                </td>
                                <td width="10%">
                                    <asp:Label ID="Label6" runat="server" Text="COUNTRY"></asp:Label>
                                </td>
                                <td width="10%">
                                    <asp:Label ID="Label7" runat="server" Text="WEBSITE"></asp:Label>
                                </td>
                                <td width="10%">
                                    <asp:Label ID="Label8" runat="server" Text="INDUSTRY"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td width="20%" align="center">
                                    <asp:Label ID="Label_name" runat="server" Text='<%#bind("orgname") %>'></asp:Label>
                                </td>
                                <td width="10%" align="center">
                                    <asp:Label ID="Label_EMAILID" runat="server" Text='<%#bind("emailid") %>'></asp:Label>
                                </td>
                                <td width="10%" align="center">
                                    <asp:Label ID="Label_address" runat="server" Text='<%#bind("contactno") %>'></asp:Label>
                                </td>
                                <td width="20%" align="center">
                                    <asp:Label ID="Label_country" runat="server" Text='<%#bind("orgaddress") %>'></asp:Label>
                                </td>
                                <td width="10%" align="center">
                                    <asp:Label ID="Label_website" runat="server" Text='<%#bind("country") %>'></asp:Label>
                                </td>
                                <td width="10%" align="center">
                                    <asp:Label ID="Label_INDUS_TYPE" runat="server" Text='<%#bind("website") %>'></asp:Label>
                                </td>
                                <td width="10%" align="center">
                                    <asp:Label ID="Label1" runat="server" Text='<%#bind("Industry_type") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
