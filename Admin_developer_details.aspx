<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_masterpage.master" AutoEventWireup="true"
    CodeFile="Admin_developer_details.aspx.cs" Inherits="Admin_developer_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td align="center" colspan="2">
                <h2>
                    DEVELOPER DETAILS
                </h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox_name" runat="server" Height="31px" Width="161px"></asp:TextBox>
            </td>
            <td align="left">
                <asp:Button ID="Button_search" class="button" runat="server" Text="SEARCH" OnClick="Button_search_Click"
                    Height="33px" Width="86px" />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                OR<br />
                <asp:Button ID="Button_getall" runat="server" class="button" Text="GET ALL" OnClick="Button_getall_Click"
                    Height="33px" Width="86px" />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:GridView ID="GridView" runat="server" AllowPaging="True" PageSize="4" ForeColor="#333333"
                    GridLines="Horizontal" AutoGenerateColumns="False" OnPageIndexChanging="GridView1_PageIndexChanging"
                    Height="300px" Width="850px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="devid" HeaderText="NAME    " SortExpression="devid">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="U_password" HeaderText="    PASSWORD" SortExpression="U_password">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="emailid" HeaderText="EMAIL ID" SortExpression="emailid ">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="contactno" HeaderText="CONTACT NO." SortExpression="contactno">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="gender" HeaderText="GENDER" SortExpression="gender">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="U_address" HeaderText="ADDRESS" SortExpression="U_address">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="country" HeaderText="COUNTRY" SortExpression="country">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="cv" HeaderText="RESUME" SortExpression="cv" />
                        <asp:BoundField DataField="prevexper" HeaderText="EXPERIENCE" SortExpression="prevexper" />
                        <asp:BoundField DataField="certification" HeaderText="EDUCATION" SortExpression="certification" />
                        <asp:BoundField DataField="devdate" HeaderText="TIME OF REGISTRATION" SortExpression="devdate" />
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
