<%@ Page Title="" Language="C#" MasterPageFile="~/Home_masterpage.master" AutoEventWireup="true"
    CodeFile="Developer_registration.aspx.cs" Inherits="Developer_registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <table align="center" style="height: 699px">
            <tr>
                <td align="center" colspan="2">
                    <h1 style="font-family: 'Arial Rounded MT Bold'">
                        Developer Registration</h1>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Name*"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_name" runat="server" Height="29px" Width="156px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_name"
                        ErrorMessage="Name cannot be blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Password*"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_passowrd" runat="server" Height="29px" Width="156px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_passowrd"
                        ErrorMessage="password cannot be blank" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Confirm Password*"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_confirmpassword" runat="server" Height="29px" Width="156px"
                        TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_confirmpassword"
                        ErrorMessage="Plesae confirm password" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_passowrd"
                        ControlToValidate="TextBox_confirmpassword" ErrorMessage="password Does Not match"
                        ForeColor="#CC0000"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label4" runat="server" Text="Email Id"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_email_id" runat="server" Height="29px" Width="156px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_email_id"
                        ErrorMessage="Not a valid Id" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label5" runat="server" Text="Contact No."></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_contact_no" runat="server" Height="29px" Width="156px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label12" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style1">
                    <asp:RadioButtonList ID="RadioButtonList_gender" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_address" runat="server" Height="93px" Width="266px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="132px">
                        <asp:ListItem>Select country</asp:ListItem>
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>North America</asp:ListItem>
                        <asp:ListItem>South America</asp:ListItem>
                        <asp:ListItem>Africa</asp:ListItem>
                        <asp:ListItem>Shri Lanka</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>Europe</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label8" runat="server" Text="CV*"></asp:Label>
                    </td>
                    <td class="style1">
                        <asp:FileUpload ID="FileUpload_cv" runat="server" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload_cv"
                            ErrorMessage="Uplaod Your Cv" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label9" runat="server" Text="Previous Experience"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_expereince" runat="server" Height="90px" Width="267px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label10" runat="server" Text="Certification"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_certificate" runat="server" Height="74px" Width="226px"
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label11" runat="server" Text="Date Of Registration"></asp:Label>
                </td>
                <td class="style1">
                    <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Photo"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload_photo" runat="server" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2" align="right">
                    <asp:Button ID="Button_reset" runat="server" Text="Reset" class="button" Height="26px"
                        Width="87px" CausesValidation="False" OnClick="Button_reset_Click" />
                </td>
                <td class="style1" align="left">
                    <asp:Button ID="Button_submit" runat="server" Text="Submit" class="button" Height="26px"
                        Width="87px" OnClick="Button_submit_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" PostBackUrl="~/Sign_uppage.aspx">Or You Already Have An Account</asp:LinkButton>
                </td>
            </tr>
        </table>
    </center>
</asp:Content>
