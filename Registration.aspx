<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OnlineEventRegistration.Registration" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Online Event Registration</title>
</head>

<body>

<form id="form1" runat="server">

    <h2 align="center">Online Event Registration</h2>

    <table align="center" cellpadding="5">

        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="valName" runat="server"
                    ControlToValidate="txtName"
                    ErrorMessage="Name is required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="valEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ErrorMessage="Email is required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="valValidEmail" runat="server"
                    ControlToValidate="txtEmail"
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                    ErrorMessage="Enter a valid email"
                    ForeColor="Red">
                </asp:RegularExpressionValidator>
            </td>
        </tr>

        <tr>
            <td>Age:</td>
            <td>
                <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="valAgeRequired" runat="server"
                    ControlToValidate="txtAge"
                    ErrorMessage="Age is required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="valAgeRange" runat="server"
                    ControlToValidate="txtAge"
                    MinimumValue="18"
                    MaximumValue="25"
                    Type="Integer"
                    ErrorMessage="Age must be between 18 and 25"
                    ForeColor="Red">
                </asp:RangeValidator>
            </td>
        </tr>

        <tr>
            <td>Gender:</td>
            <td>
                <asp:RadioButton ID="rbMale" runat="server"
                    Text="Male" GroupName="Gender" />

                <asp:RadioButton ID="rbFemale" runat="server"
                    Text="Female" GroupName="Gender" />
            </td>
        </tr>

        <tr>
            <td>Select Event:</td>
            <td>
                <asp:DropDownList ID="ddlEvent" runat="server">
                    <asp:ListItem Value="">-- Select Event --</asp:ListItem>
                    <asp:ListItem>Web Development</asp:ListItem>
                    <asp:ListItem>AI Workshop</asp:ListItem>
                    <asp:ListItem>Cloud Computing</asp:ListItem>
                    <asp:ListItem>Cyber Security</asp:ListItem>
                </asp:DropDownList>

                <asp:RequiredFieldValidator ID="valEvent" runat="server"
                    ControlToValidate="ddlEvent"
                    InitialValue=""
                    ErrorMessage="Please select an event"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Event Date:</td>
            <td>
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </td>
        </tr>

        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server"
                    TextMode="Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="valPassword" runat="server"
                    ControlToValidate="txtPassword"
                    ErrorMessage="Password is required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>
            </td>
        </tr>

        <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server"
                    TextMode="Password"></asp:TextBox>

                <asp:RequiredFieldValidator ID="valConfirm" runat="server"
                    ControlToValidate="txtConfirm"
                    ErrorMessage="Confirm password is required"
                    ForeColor="Red">
                </asp:RequiredFieldValidator>

                <asp:CompareValidator ID="valCompare" runat="server"
                    ControlToValidate="txtConfirm"
                    ControlToCompare="txtPassword"
                    ErrorMessage="Password does not match"
                    ForeColor="Red">
                </asp:CompareValidator>
            </td>
        </tr>

        <tr>
            <td colspan="2">
                <asp:CheckBox ID="chkTerms" runat="server"
                    Text="I accept Terms and Conditions" />
            </td>
        </tr>

        <tr>
            <td></td>
            <td>
                <asp:Button ID="btnRegister" runat="server"
                    Text="Register"
                    OnClick="btnRegister_Click" />

                <asp:Button ID="btnClear" runat="server"
                    Text="Clear"
                    OnClick="btnClear_Click"
                    CausesValidation="false" />
            </td>
        </tr>

    </table>

    <br />
     <center>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJVVt-_J0u6uke3CxM2ATibYutLh7hDF4LG0vE-n4hiA&s=10"
            width="400"
            height="500"
            alt="Event Poster" />
    </center>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
        ForeColor="Red"
        HeaderText="Please correct the following errors:" />

    <br />

    <asp:Label ID="lblMessage" runat="server"
        ForeColor="Green">
    </asp:Label>

</form>

</body>
</html>