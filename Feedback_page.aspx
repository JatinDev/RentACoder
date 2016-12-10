<%@ Page Title="" Language="C#" MasterPageFile="~/Home_masterpage.master" AutoEventWireup="true"
    CodeFile="Feedback_page.aspx.cs" Inherits="Feedback_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table align="center" style="height: 461px; width: 709px">
        <tr>
            <td colspan="2" align="center">
                <h1>
                    FEEDBACK DETAILS
                </h1>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
            </td>
            <td class="style4">
                <asp:TextBox ID="txtName" runat="server" Height="30px" Width="131px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label2" runat="server" Text="EMAIL ID"></asp:Label>
            </td>
            <td class="style3">
                <asp:TextBox ID="TextBox_emailid" runat="server" Height="39px" Width="191px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ForeColor="#CC0000"
                    runat="server" ErrorMessage="This Is Not A Vaild ID" ControlToValidate="TextBox_emailid"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_emailid"
                    ErrorMessage="Please Enter Your Email ID" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2">
                <asp:Label ID="Label3" runat="server" Text="COMMENT"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_comment" runat="server" Height="123px" TextMode="MultiLine"
                    Width="336px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_comment"
                    ErrorMessage="Please Enter Your Comment" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button class="button" ID="Button_reset" runat="server" Text="Reset" Height="31px"
                    Width="107px" CausesValidation="False" OnClick="Button_reset_Click" />
            </td>
            <td>
                <asp:Button class="button" ID="Button_submit" runat="server" Text="Submit"
                    Height="31px" Width="107px" OnClick="Button_submit_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
