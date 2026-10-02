<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Registration Form</title>
</head>

<body>
    <form id="form1" runat="server">

        <h2>Registration Form</h2>

        Name:
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvName"
            runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Name is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <br /><br />


        Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator
            ID="revEmail"
            runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
            ErrorMessage="Enter valid email"
            ForeColor="Red">
        </asp:RegularExpressionValidator>

        <br /><br />


        Contact No:
        <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvContact"
            runat="server"
            ControlToValidate="txtContact"
            ErrorMessage="Contact number is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator
            ID="revContact"
            runat="server"
            ControlToValidate="txtContact"
            ValidationExpression="^[0-9]{10}$"
            ErrorMessage="Enter 10 digit contact number"
            ForeColor="Red">
        </asp:RegularExpressionValidator>

        <br /><br />


        Password:
        <asp:TextBox ID="txtPassword" runat="server"
            TextMode="Password"></asp:TextBox>

        <asp:RequiredFieldValidator
            ID="rfvPassword"
            runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password is required"
            ForeColor="Red">
        </asp:RequiredFieldValidator>

        <br /><br />


        Confirm Password:
        <asp:TextBox ID="txtConfirmPassword" runat="server"
            TextMode="Password"></asp:TextBox>

        <asp:CompareValidator
            ID="cvPassword"
            runat="server"
            ControlToValidate="txtConfirmPassword"
            ControlToCompare="txtPassword"
            ErrorMessage="Passwords do not match"
            ForeColor="Red">
        </asp:CompareValidator>

        <br /><br />


        Gender:

        <asp:RadioButton
            ID="rbMale"
            runat="server"
            Text="Male"
            GroupName="Gender" />

        <asp:RadioButton
            ID="rbFemale"
            runat="server"
            Text="Female"
            GroupName="Gender" />

        <br /><br />


        <asp:Button
            ID="btnRegister"
            runat="server"
            Text="Register"
            OnClick="btnRegister_Click" />

        <br /><br />

        <asp:Label
            ID="lblMessage"
            runat="server"
            ForeColor="Green">
        </asp:Label>

    </form>
</body>
</html>