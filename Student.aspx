<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="StudentMultiView.Default"%>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Student Details</title>
</head>

<body>
    <form id="form1" runat="server">

        <h2>Student Details</h2>

        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">

            <!-- VIEW 1 : PERSONAL INFORMATION -->
            <asp:View ID="View1" runat="server">

                <h3>Student Personal Information</h3>

                Name:
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <br /><br />

                Gender:
                <asp:RadioButton ID="rbMale" runat="server"
                    Text="Male" GroupName="Gender" />

                <asp:RadioButton ID="rbFemale" runat="server"
                    Text="Female" GroupName="Gender" />

                <br /><br />

                Address:
                <asp:TextBox ID="txtAddress" runat="server"
                    TextMode="MultiLine"></asp:TextBox>

                <br /><br />

                Degree:
                <asp:DropDownList ID="ddlDegree" runat="server">
                    <asp:ListItem>BTECH</asp:ListItem>
                    <asp:ListItem>BCA</asp:ListItem>
                    <asp:ListItem>BBA</asp:ListItem>
                    <asp:ListItem>B.Sc</asp:ListItem>
                    <asp:ListItem>MCA</asp:ListItem>
                    <asp:ListItem>MBA</asp:ListItem>
                </asp:DropDownList>

                <br /><br />

                <asp:Button ID="btnNext" runat="server"
                    Text="Next"
                    OnClick="btnNext_Click" />

            </asp:View>


            <!-- VIEW 2 : CONTACT INFORMATION -->
            <asp:View ID="View2" runat="server">

                <h3>Student Contact Information</h3>

                Email:
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>

                <br /><br />

                Contact No:
                <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>

                <br /><br />

                City:
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>

                <br /><br />

                <asp:Button ID="btnBack" runat="server"
                    Text="Back"
                    OnClick="btnBack_Click" />

                &nbsp;

                <asp:Button ID="btnSummary" runat="server"
                    Text="Show Summary"
                    OnClick="btnSummary_Click" />

            </asp:View>


            <!-- VIEW 3 : SUMMARY -->
            <asp:View ID="View3" runat="server">

                <h3>Student Summary</h3>

                <asp:Label ID="lblSummary" runat="server"></asp:Label>

                <br /><br />

                <asp:Button ID="btnBackToContact" runat="server"
                    Text="Back"
                    OnClick="btnBackToContact_Click" />

            </asp:View>

        </asp:MultiView>

    </form>
</body>
</html>