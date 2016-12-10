<%@ Page Title="" Language="C#" MasterPageFile="~/Developer_masterpage.master" AutoEventWireup="true"
    CodeFile="Applied_project.aspx.cs" Inherits="Applied_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
    <tr>
        <td align="center" colspan="3">
            <h1>
                All Applied Projects
            </h1>
        </td>
    </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" Height="374px" Width="849px" AutoGenerateColumns="False"
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="projid" HeaderText="PROJECT ID" SortExpression="bookingid"
                            HeaderStyle-VerticalAlign="Middle">
                            <HeaderStyle VerticalAlign="Middle"></HeaderStyle>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="projname" HeaderText="PROJEACT NAME" SortExpression="projname">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="projdescription" HeaderText="PROJECT DESCRIPTION" SortExpression="projdescription">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="budget" HeaderText="PRICE" SortExpression="budget">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="duration" HeaderText="DURATION" SortExpression="duration">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="projdate" HeaderText="POSTED ON" SortExpression="projdate">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
