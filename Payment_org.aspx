<%@ Page Title="" Language="C#" MasterPageFile="~/Organization_masterpage.master"
    AutoEventWireup="true" CodeFile="Payment_org.aspx.cs" Inherits="Payment_org" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            height: 19px;
        }
        .style3
        {
            height: 46px;
            width: 284px;
        }
        .style4
        {
            height: 33px;
            width: 284px;
        }
        .style6
        {
            height: 46px;
            width: 164px;
        }
        .style7
        {
            height: 33px;
            width: 164px;
        }
        .style8
        {
            height: 32px;
            width: 261px;
        }
        .style9
        {
            height: 32px;
            width: 164px;
        }
        .style10
        {
            height: 32px;
            width: 284px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table width="100%">
            <tr>
                <td colspan="2" align="center">
                    <h2>
                        PAYMENT DETAILS</h2>
                </td>
            </tr>
            <tr>
                <td align="center" class="style1">
                    <asp:Label ID="Label5" runat="server" Text="Project Name"></asp:Label>&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList_project" runat="server" Height="25px" Width="96px">
                    </asp:DropDownList>
                    
                </td>
                
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:Button ID="Button_GetDetails" class="button" runat="server" Text="Get Details"
                        OnClick="Button_GetDetails_Click" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Panel ID="Panel1" runat="server">
                        <center>
                            <table>
                                <tr>
                                    <td class="style9">
                                        Project Cost
                                    </td>
                                    <td class="style10">
                                        <asp:Label ID="Label1" runat="server" Text='<%#bind("budget") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Project Duration
                                    </td>
                                    <td class="style10">
                                        <asp:Label ID="Label2" runat="server" Text='<%#bind("duration") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Skills
                                    </td>
                                    <td class="style10">
                                        <asp:Label ID="Label3" runat="server" Text='<%#bind("skills") %>'></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Developer
                                    </td>
                                    <td class="style10">
                                        <asp:DropDownList ID="DropDownList_developer" runat="server" Height="32px" 
                                            Width="115px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style6">
                                        Mode Of Payment
                                    </td>
                                    <td class="style3">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                                            <asp:ListItem>Cash</asp:ListItem>
                                            <asp:ListItem>Credit Card</asp:ListItem>
                                            <asp:ListItem>Debit Card</asp:ListItem>
                                            <asp:ListItem>Cheque</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style9">
                                        Payment AMount
                                    </td>
                                    <td class="style10">
                                        <asp:TextBox ID="TextBox_amt" runat="server" Height="26px" Width="118px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ErrorMessage="Must enter amount" ForeColor="Red" 
                                            ControlToValidate="TextBox_amt"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style7">
                                        Date
                                    </td>
                                    <td class="style4">
                                        <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3" align="center">
                                        <asp:Button ID="Button_submit" class="button" runat="server" Text="Pay Now" OnClick="Button_submit_Click" />
                                    </td>
                                </tr>
                            </table>
                        </center>
                    </asp:Panel>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
