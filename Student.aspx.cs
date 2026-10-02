using System;

namespace StudentMultiView
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        // View 1 -> View 2
        protected void btnNext_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        // View 2 -> View 1
        protected void btnBack_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        // View 2 -> View 3
        protected void btnSummary_Click(object sender, EventArgs e)
        {
            string gender = "";

            if (rbMale.Checked)
            {
                gender = "Male";
            }
            else if (rbFemale.Checked)
            {
                gender = "Female";
            }

            lblSummary.Text =
                "Name: " + txtName.Text + "<br/>" +
                "Gender: " + gender + "<br/>" +
                "Address: " + txtAddress.Text + "<br/>" +
                "Degree: " + ddlDegree.SelectedValue + "<br/>" +
                "Email: " + txtEmail.Text + "<br/>" +
                "Contact No: " + txtContact.Text + "<br/>" +
                "City: " + txtCity.Text;

            MultiView1.ActiveViewIndex = 2;
        }

        // View 3 -> View 2
        protected void btnBackToContact_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
    }
}