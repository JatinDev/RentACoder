<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_masterpage.master" AutoEventWireup="true"
    CodeFile="Admin_projectlist.aspx.cs" Inherits="Admin_projectlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
        <tr>
            <td align="center" colspan="2">
                <h2>
                    PROJECT DETAILS
                </h2>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="False" Height="442px"
                    Width="806px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="projid" HeaderText="PROJECT ID" SortExpression="projid">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="projname" HeaderText="PROJECT NAME" SortExpression="projname">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="requirenmet" HeaderText="REQUIRENMENT" SortExpression="requirenmet">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="skills" HeaderText="SKILLS" SortExpression="skills">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="projdescription" HeaderText="DESCRIPTION" SortExpression="projdescription">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="budget" HeaderText="PRICE" SortExpression="budget">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="duration" HeaderText="DURATION" SortExpression="duration">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="projdate" HeaderText="DATE OF POSTED" SortExpression="projdate">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
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
