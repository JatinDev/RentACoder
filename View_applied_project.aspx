<%@ Page Title="" Language="C#" MasterPageFile="~/Organization_masterpage.master"
    AutoEventWireup="true" CodeFile="View_applied_project.aspx.cs" Inherits="View_applied_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table width="100%">
       <tr>
        <td align="center" colspan="2">
            <h2>
                ALL APPLIED PROJECTS
            </h2>
        </td>
       </tr> <tr>
            <td align="center" class="style1">
                Select Project to view status &nbsp &nbsp&nbsp &nbsp
                <asp:DropDownList ID="DropDownList1" runat="server" Height="32px" Width="155px" Style="margin-left: 0px">
                    <asp:ListItem>SELECT PROJECT</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                <asp:Button ID="Button_Search" runat="server" class="button1" Text="Search" Height="24px"
                    OnClick="Button_Search_Click" Width="86px" />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" GridLines="None" OnRowCommand="GridView1_RowCommand" Height="247px"
                    Width="861px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="projname" HeaderText="PROJECT NAME" SortExpression="projname">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="projdescription" HeaderText="DESCRIPTION" SortExpression="projdescription">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="budget" HeaderText="BUDGET" SortExpression="budget">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="bookingdate" HeaderText="DATE OF Booking" SortExpression="bookingdate">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="developerid" HeaderText="BOOKED BY DEVELPER" SortExpression="developerid">
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" CommandName="View"
                                    CommandArgument='<%#bind("developerid") %>' Text="View Profile"></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="false" CommandName="Approve"
                                    CommandArgument='<%#bind("bookingid") %>' Text="Approve"></asp:LinkButton>
                            </ItemTemplate>
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
