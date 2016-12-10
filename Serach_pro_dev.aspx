<%@ Page Title="" Language="C#" MasterPageFile="~/Developer_masterpage.master" AutoEventWireup="true"
    CodeFile="Serach_pro_dev.aspx.cs" Inherits="Serach_pro_dev" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 275px;
        }
        .style2
        {
            width: 118px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" width="100%">
        <tr>
            <td align="center">
                <h1>
                    Serach Project
                </h1>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%">
                    <tr>
                        <td colspan="5" align="center">
                            <h2>
                                SEARCH BY</h2>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            NAME
                        </td>
                        <td >
                            <asp:TextBox ID="TextBox_name" runat="server" Width="187px" Height="32px"></asp:TextBox>
                        </td>
                        <td class="style2">
                            OR BY
                        </td>
                        <td align="center">
                            SKILLS
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_skills" runat="server" Width="187px" Height="32px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            BUDGET
                        </td>
                        <td class="style1">
                            <asp:TextBox ID="TextBox_BUDGET" runat="server" Width="187px" Height="32px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                        <td class="style2">
                            OR BY
                        </td>
                        <td align="center">
                            DURATION
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox_duration" runat="server" Width="188px" Height="32px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="right" colspan="2">
                            <asp:Button ID="Button_search" class="button" Height="26px" runat="server" Width="97px"
                                Text="SEARCH" OnClick="Button_search_Click" />
                        </td>
                        <td align="left" colspan="6">
                            <asp:Button ID="Button_getall" class="button" runat="server" Text="Latest Project"
                                Height="26px" OnClick="Button_getall_Click" Width="97px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>
                            <table width="100%">
                                <tr>
                                    <td colspan="8">
                                        <asp:DataList ID="DataList1" runat="server" Height="411px" CellPadding="4" Width="822px"
                                            OnItemCommand="DataList1_ItemCommand" ForeColor="#333333">
                                            <AlternatingItemStyle BackColor="White" />
                                            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="50px"
                                                VerticalAlign="Top" Width="900px" />
                                            <ItemStyle BackColor="#EFF3FB" Height="30px" Width="30px" />
                                            <HeaderTemplate>
                                                <table width="100%">
                                                    <tr>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label2" runat="server" Text="PROJECT NAME"></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label3" runat="server" Text="REQUIRENMENT"></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label4" runat="server" Text="SKILLS"></asp:Label>
                                                        </td>
                                                        <td width="20%" align="center">
                                                            <asp:Label ID="Label5" runat="server" Text="DESCRIPTION"></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label6" runat="server" Text="BUDGET"></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label7" runat="server" Text="DURATION"></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label8" runat="server" Text="DATE OF POSTED"></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                        </td>
                                                        <td width="10%" align="center">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </HeaderTemplate>
                                            <ItemTemplate>
                                                <table width="100%">
                                                    <tr>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label_name" runat="server" Text='<%#bind("projname") %>'></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label_EMAILID" runat="server" Text='<%#bind("requirenmet") %>'></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label_address" runat="server" Text='<%#bind("skills") %>'></asp:Label>
                                                        </td>
                                                        <td width="20%" align="center">
                                                            <asp:Label ID="Label_country" runat="server" Text='<%#bind("projdescription") %>'></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label_website" runat="server" Text='<%#bind("budget") %>'></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label_INDUS_TYPE" runat="server" Text='<%#bind("duration") %>'></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:Label ID="Label1" runat="server" Text='<%#bind("projdate") %>'></asp:Label>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Apply" CommandArgument='<%#bind("Projid") %>'>Apply Now</asp:LinkButton>
                                                        </td>
                                                        <td width="10%" align="center">
                                                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Like" CommandArgument='<%#bind("Projid") %>'>Like</asp:LinkButton>
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
            </td>
        </tr>
    </table>
</asp:Content>
