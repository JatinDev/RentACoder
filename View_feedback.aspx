<%@ Page Title="" Language="C#" MasterPageFile="~/Organization_masterpage.master" AutoEventWireup="true" CodeFile="View_feedback.aspx.cs" Inherits="View_feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td>
            &nbsp
            &nbsp
            &nbsp
            </td>
        </tr>
    </table>

<table width="100%">
            <tr>
                <td align="center">
                    <asp:GridView ID="GridView" runat="server" CellPadding="4" ForeColor="#333333"
                            GridLines="None" AutoGenerateColumns="False"
                             PageSize="1">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="name" HeaderText="NAME" SortExpression="devid" />
                                <asp:BoundField DataField="email_id" HeaderText="EMAIL ID" SortExpression="emailid " />
                                <asp:BoundField DataField="comment" HeaderText="CONTACT NO." SortExpression="contactno" />
                                <asp:CommandField ShowEditButton="True" />
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

