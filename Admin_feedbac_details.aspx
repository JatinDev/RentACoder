<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_masterpage.master" AutoEventWireup="true"
    CodeFile="Admin_feedbac_details.aspx.cs" Inherits="Admin_feedbac_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td align="center" colspan="2">
                <h2>
                    FEEDBACK DETAILS
                </h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                    AutoGenerateColumns="False" PageSize="1" Height="231px" Width="789px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="devid">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="email_id" HeaderText="EMAIL ID" SortExpression="emailid ">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="comment" HeaderText="CONTACT NO." SortExpression="contactno">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField ShowEditButton="True">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                    </Columns>
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
