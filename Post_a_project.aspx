<%@ Page Title="" Language="C#" MasterPageFile="~/Organization_masterpage.master"
    AutoEventWireup="true" CodeFile="Post_a_project.aspx.cs" Inherits="Post_a_project" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <center>
            <table align="center" style="height: 665px; width: 594px">
                <tr>
                    <td align="center" colspan="2">
                        <h1 style="font-family: 'Arial Rounded MT Bold'">
                            Post A Project</h1>
                    </td>
                </tr>
                <tr>
                    <td>
                        Project Name
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_Projectname" runat="server" Height="26px" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Requirement"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_Requirement" runat="server" Width="208px" TextMode="MultiLine"
                            Height="57px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Requirement"
                            ErrorMessage="Project Requirenment Is Must" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Skills"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_Skills" runat="server" Height="26px" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_Description" runat="server" Width="210px" TextMode="MultiLine"
                            Height="59px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Budget"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_Budget" runat="server" Height="26px" Width="172px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Budget"
                            ErrorMessage="Budget Tag Cannot Be Blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Label ID="Label6" runat="server" Text="Duration"></asp:Label>
                    </td>
                    <td class="style1">
                        <asp:TextBox ID="TextBox_duration" runat="server" Height="26px" Width="172px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2" align="right">
                        <asp:Button ID="Button_reset" class="button" runat="server" Text="Reset" Height="26px"
                            Width="87px" CausesValidation="False" OnClick="Button_reset_Click" />
                    </td>
                    <td class="style1" align="left">
                        <asp:Button ID="Button_submit" class="button" runat="server" Text="Submit" Height="26px"
                            Width="87px" OnClick="Button_submit_Click" />
                    </td>
                </tr>
            </table>
        </center>
    </div>
</asp:Content>
