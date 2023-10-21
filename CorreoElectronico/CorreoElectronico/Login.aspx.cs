using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CorreoElectronico.DataSetCorreoTableAdapters;
using CorreoElectronico.Objects;

namespace CorreoElectronico
{
    public partial class Login : System.Web.UI.Page
    {
        UserTableAdapter userTable = new UserTableAdapter();
        private string estado;
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
        }



        protected void ButtonRegister_Click(object sender, EventArgs e)
        {
            User newUser = getDataUser();
            if (newUser != null)
            {
                if (userTable.CheckUserByEmail(newUser.email) == 0)
                {

                }
                else
                {

                }
            }
            userTable.InsertUser(newUser.email, newUser.firstName, newUser.lastName, newUser.birthdate, newUser.gender, newUser.password, newUser.phone);
        }

        private User getDataUser()
        {
            try
            {
                String email = TextBoxEmail.Text;
                String firstName = TextBoxFirstName.Text;
                String lastName = TextBoxLastName.Text;
                String birthday = TextBoxBirthday.Text;
                String gender = radioButtonGender.SelectedValue;
                String password = TextBoxPassword.Text;
                int phone = Convert.ToInt32(TextBoxPhone.Text);

                User user = new User(email, firstName, lastName, birthday, gender, password, phone);
                return user;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            String script = "$('#mymodal').modal('show');";
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", script, true);
        }
    }
}