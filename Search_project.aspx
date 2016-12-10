<%@ Page Title="" Language="C#" MasterPageFile="~/Home_masterpage.master" AutoEventWireup="true"
    CodeFile="Search_project.aspx.cs" Inherits="Search_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center">
        <tr>
            <td align="center" valign="top" colspan="2">
                <h1>
                    Search Project</h1>
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
                            <asp:TextBox ID="TextBox_name" runat="server" Width="187px" Height="32px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            OR BY
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <br />
                            SKILLS
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_skills" runat="server" Width="187px" Height="32px"></asp:TextBox>
                            <br />
                            <br />
                            OR BY<br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <br />
                            BUDGET
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_BUDGET" runat="server" Width="187px" Height="32px"></asp:TextBox>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            OR BY
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <br />
                            DURATION
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:TextBox ID="TextBox_duration" runat="server" Width="187px" Height="32px"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style1">
                            <asp:Button class="button" Height="26px" ID="Button_search" Width="97px" runat="server"
                                Text="SEARCH" OnClick="Button_search_Click" />
                        </td>
                        <td>
                            <asp:Button ID="Button_getall" class="button" runat="server" Text="Latest Project"
                                Height="26px" OnClick="Button_getall_Click" Width="97px" />
                        </td>
                    </tr>
                </table>
            </td>
            <td valign="top">
                <table width="100%">
                    <tr>
                        <td colspan="8">
                            <asp:DataList ID="DataList1" runat="server" Height="400px" CellPadding="4" Width="589px"
                                OnItemCommand="DataList1_ItemCommand" ForeColor="#333333">
                                <AlternatingItemStyle BackColor="White" />
                                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Height="50px"
                                    VerticalAlign="Top" Width="900px" />
                                <ItemStyle BackColor="#EFF3FB" Height="30px" Width="30px" />
                                <ItemTemplate>
                                    <table width="100%">
                                        <tr>
                                            <td width="20%">
                                                <asp:Label ID="Label2" runat="server" Text="PROJECT NAME"></asp:Label>
                                            </td>
                                            <td width="80%">
                                                <asp:Label ID="Label_name" runat="server" Text='<%#bind("projname") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label3" runat="server" Text="REUIRENMENT"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_EMAILID" runat="server" Text='<%#bind("requirenmet") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label4" runat="server" Text="SKILLS REQUIRED"></asp:Label>
                                            </td>
                                            <td width="20%">
                                                <asp:Label ID="Label_address" runat="server" Text='<%#bind("skills") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label5" runat="server" Text="PROJECT NAME"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:Label ID="Label_country" runat="server" Text='<%#bind("projdescription") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label6" runat="server" Text="BUDGET"></asp:Label>
                                            </td>
                                            <td width="10%">
                                                <asp:Label ID="Label_website" runat="server" Text='<%#bind("budget") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label7" runat="server" Text="DURATION"></asp:Label>
                                            </td>
                                            <td width="10%">
                                                <asp:Label ID="Label_INDUS_TYPE" runat="server" Text='<%#bind("duration") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label8" runat="server" Text="DATE OF POSTED"></asp:Label>
                                            </td>
                                            <td width="10%">
                                                <asp:Label ID="Label1" runat="server" Text='<%#bind("projdate") %>'></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Apply" CommandArgument='<%#bind("Projid") %>'>Apply Now</asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Like" CommandArgument='<%#bind("Projid") %>'>Likes</asp:LinkButton>(<asp:Label
                                                    ID="Label10" runat="server" Text='<%#bind("U_like") %>'></asp:Label>)
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="2" height="10">
                                                <hr />
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
