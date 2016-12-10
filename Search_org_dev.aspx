<%@ Page Title="" Language="C#" MasterPageFile="~/Developer_masterpage.master" AutoEventWireup="true"
    CodeFile="Search_org_dev.aspx.cs" Inherits="Search_org_dev" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 269px;
        }
        .style2
        {
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="100%">
        <tr>
            <td align="center" colspan="6">
                <h1>
                    Search Organization
                </h1>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td align="center" colspan="8">
                            <h2>
                                SEARCH BY</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            NAME
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="TextBox_name" runat="server" Width="181px" Height="30px"></asp:TextBox>
                        </td>
                        <td class="style2">
                            OR BY
                        </td>
                        <td>
                            CONTACT NO.
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_contactno" runat="server" Width="181px" Height="30px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            COUNTRY
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="TextBox_country" runat="server" Width="181px" Height="30px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                        <td class="style2">
                            OR BY
                        </td>
                        <td>
                            &nbsp;INDUSTRY TYPE
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_Industry_type" runat="server" Width="181px" Height="30px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="Button_search" class="button" runat="server" Text="SEARCH" OnClick="Button_search_Click"
                                Height="26px" Width="80px" />
                        </td>
                        <td colspan="3" align="center">
                            <asp:Button class="button" ID="Button_getall" runat="server" Text="Get all" Height="26px"
                                OnClick="Button_getall_Click" Width="80px" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="8" align="center">
                            <asp:DataList ID="DataList1" runat="server" Height="348px" CellPadding="4" Width="794px"
                                ForeColor="#333333">
                                <AlternatingItemStyle BackColor="White" />
                                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="50px"
                                    VerticalAlign="Top" Width="900px" />
                                <ItemStyle BackColor="#EFF3FB" Height="50px" VerticalAlign="Top" Width="900px" />
                                <HeaderTemplate>
                                    <table width="100%">
                                        <tr>
                                            <td width="20%" align="center">
                                                <asp:Label ID="Label2" runat="server" Text="ORGANIZATION NAME"></asp:Label>
                                            </td>
                                            <td width="10%" align="center">
                                                <asp:Label ID="Label3" runat="server" Text="EMAIL ID"></asp:Label>
                                            </td>
                                            <td width="10%" align="center">
                                                <asp:Label ID="Label4" runat="server" Text="CONTACT NO."></asp:Label>
                                            </td>
                                            <td width="20%" align="center">
                                                <asp:Label ID="Label5" runat="server" Text="ADDRESS"></asp:Label>
                                            </td>
                                            <td width="10%" align="center">
                                                <asp:Label ID="Label6" runat="server" Text="COUNTRY"></asp:Label>
                                            </td>
                                            <td width="10%" align="center">
                                                <asp:Label ID="Label7" runat="server" Text="WEBSITE"></asp:Label>
                                            </td>
                                            <td width="10%" align="center">
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
                                            <td width="10%" align="center"s>
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
            </td>
        </tr>
    </table>
</asp:Content>
