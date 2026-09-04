using System;

namespace OnlineEventRegistration
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode =
                System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (!chkTerms.Checked)
                {
                    lblMessage.ForeColor =
                        System.Drawing.Color.Red;

                    lblMessage.Text =
                        "Please accept Terms and Conditions.";

                    return;
                }

                lblMessage.ForeColor =
                    System.Drawing.Color.Green;

                lblMessage.Text =
                    "Registration Successful!";
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtAge.Text = "";
            txtPassword.Text = "";
            txtConfirm.Text = "";

            ddlEvent.SelectedIndex = 0;

            rbMale.Checked = false;
            rbFemale.Checked = false;

            chkTerms.Checked = false;

            lblMessage.Text = "";
        }
    }
}