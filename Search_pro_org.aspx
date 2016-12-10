<%@ Page Title="" Language="C#" MasterPageFile="~/Organization_masterpage.master"
    AutoEventWireup="true" CodeFile="Search_pro_org.aspx.cs" Inherits="Search_pro_org" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td align="center" colspan="2">
                <h2>
                    ALL POSTED PROJECTS
                </h2>
            </td>
        </tr><tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" Height="251px" CellPadding="4" Width="859px"
                    ForeColor="#333333">
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
                                <td width="20%" align="center">
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
                            </tr>
                        </table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <table width="100%">
                            <tr>
                                <td width="10%" align="center" >
                                    <asp:Label ID="Label_name" runat="server" Text='<%#bind("projname") %>'></asp:Label>
                                </td>
                                <td width="10%" align="center">
                                    <asp:Label ID="Label_EMAILID" runat="server" Text='<%#bind("requirenmet") %>'></asp:Label>
                                </td>
                                <td width="20%" align="center">
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
                            </tr>
                        </table>
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
