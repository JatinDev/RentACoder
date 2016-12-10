<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_masterpage.master" AutoEventWireup="true"
    CodeFile="Admin_org_details.aspx.cs" Inherits="Admin_org_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td align="center" colspan="2">
                <h2>
                    ORGANIZATION DETAILS
                </h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:TextBox ID="TextBox_name" runat="server" Height="29px" Width="135px"></asp:TextBox>
                &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
            <td>
                <asp:Button ID="Button_search" class="button1" runat="server" Text="SEARCH" OnClick="Button_search_Click"
                    Height="36px" Width="88px" />
            </td>
        </tr>
        <tr>
            <td align="center">
                OR &nbsp; &nbsp; &nbsp;<br />
                &nbsp;&nbsp;
                <asp:Button ID="Button_getall" class="button1" Height="36px" Width="88px" runat="server"
                    Text="GET ALL" OnClick="Button_getall_Click" />
                &nbsp; &nbsp; &nbsp; &nbsp;
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    PageSize="5" ForeColor="#333333" GridLines="None" Height="484px" Width="834px"
                    OnPageIndexChanging="GridView_PageIndexChanging">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="orgid" HeaderText="NAME" SortExpression="orgid">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="U_password" HeaderText="PASSWORD" SortExpression="U_password">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="emailid" HeaderText="EMAIL ID" SortExpression="emailid">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="orgaddress" HeaderText="ADDRESS" SortExpression="orgaddress">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="contactno" HeaderText="CONTACT NO" SortExpression="contactno">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="country" HeaderText="COUNTRY" SortExpression="country">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="website" HeaderText="WEBSITE" SortExpression="website">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Industry_type" HeaderText="INDUSTRY" SortExpression="Industry_type">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="org" HeaderText="DATE OF REGISTRATION" SortExpression="org">
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
