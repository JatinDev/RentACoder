<%@ Page Title="" Language="C#" MasterPageFile="~/Developer_masterpage.master" AutoEventWireup="true" CodeFile="Status_view_dev.aspx.cs" Inherits="Status_view_dev" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table width="100%">
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                Height="390px" Width="862px" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="projname" HeaderText="PROJECT NAME" 
                        SortExpression="projname" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="projdescription" HeaderText="PROJECT DESCRIPTION" 
                        SortExpression="projdescription" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="budget" HeaderText="PROJECT BUDGET" 
                        SortExpression="budget" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="duration" HeaderText="PROJECT DURATION" 
                        SortExpression="duration" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="bookingid" HeaderText="BOOKING ID" 
                        SortExpression="bookingid" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="projectid" HeaderText="PROJECT ID" 
                        SortExpression="projectid" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="developerid" HeaderText="DEVELOPER ID" 
                        SortExpression="developerid" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="bookingdate" HeaderText="BOOKING DATE" 
                        SortExpression="bookingdate" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="U_status" HeaderText="STATUS" 
                        SortExpression="U_status" >
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </td>
    </tr>
</table>
</asp:Content>

