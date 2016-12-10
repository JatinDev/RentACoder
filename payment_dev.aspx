<%@ Page Title="" Language="C#" MasterPageFile="~/Developer_masterpage.master" AutoEventWireup="true"
    CodeFile="payment_dev.aspx.cs" Inherits="payment_dev" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table width="100%">
            <tr>
                <td>
                    <asp:DataList ID="DataList1" runat="server" Width="445px" CellPadding="4" ForeColor="#333333">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#EFF3FB" />
                        <ItemTemplate>
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        Paid by
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label3" runat="server" Text='<%#bind("orgname") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Payment Mode
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label_cost" runat="server" Text='<%#bind("mode") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Project Cost
                                    </td>
                                    <td align="center">
                                        <asp:Label ID="Label1" runat="server" Text='<%#bind("payment_amt") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Payment Date
                                    </td>
                                    <td align="right">
                                        <asp:Label ID="Label2" runat="server" Text='<%#bind("pay_date") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <hr />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    </asp:DataList>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
