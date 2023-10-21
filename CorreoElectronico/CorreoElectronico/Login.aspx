<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CorreoElectronico.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Files/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Files/css/Styles.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="formLogin" runat="server">
        <div class="container">
            <div class="vh-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                        <div class="card shadow-2-strong" style="border-radius: 1rem;">
                            <div class="card-body p-5 text-center">
                                <h5 id="PTitle" runat="server">Test</h5>


                                <div class="row mb-2">
                                    <img class="d-block m-auto" src="https://i0.wp.com/eltallerdehector.com/wp-content/uploads/2022/10/gmail-logo-png.png?fit=512%2C512&ssl=1" alt="Gmail Logo" style="width: 100px; height: 70px;" />
                                </div>
                                <div class="row">
                                    <div class="form-outline mb-4">
                                        <asp:TextBox ID="TBMail" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                                        <asp:Label ID="LabelEmail" AssociatedControlID="TBMail" CssClass="form-label" runat="server" Text="Correo Electronico"></asp:Label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <asp:TextBox ID="TBPassword" TextMode="Password" CssClass="form-control form-control-lg" runat="server"></asp:TextBox>
                                        <asp:Label ID="LabelPassword" AssociatedControlID="TBPassword" CssClass="form-label" runat="server" Text="Contraseña"></asp:Label>
                                    </div>
                                    <asp:Button ID="ButtonLogin" CssClass="btn btn-primary btn-lg" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
                                </div>
                                <div class="row mt-5">
                                    <a class="underlineHover" data-bs-toggle="modal" data-bs-target="#registerModal" href="#">Crear Cuenta</a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="registerModallLabel" aria-hidden="true">
                                        <div class="modal-dialog modal-dialog-scrollable modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="registerModallLabel">Completa dicha informacion</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <div class="container-fluid">
                                                        <div class="row mb-4">
                                                            <div class="form-floating">
                                                                <asp:TextBox required="" ID="TextBoxEmail" CssClass="form-control" TextMode="Email" placeholder="" runat="server"></asp:TextBox>
                                                                <asp:Label CssClass="m-1" AssociatedControlID="TextBoxEmail" ID="LabelRegisterEmail" runat="server" Text="Email"></asp:Label>
                                                                <div class="invalid-feedback">
                                                                    Porfavor ingresa un email valido
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row mb-4">
                                                            <div class="form-floating">
                                                                <asp:TextBox ID="TextBoxFirstName" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                                                <asp:Label CssClass="m-1" AssociatedControlID="TextBoxFirstName" ID="LabelTextBoxFirstName" runat="server" Text="Nombres"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row mb-4">
                                                            <div class="form-floating">
                                                                <asp:TextBox ID="TextBoxLastName" CssClass="form-control" placeholder="" runat="server"></asp:TextBox>
                                                                <asp:Label CssClass="m-1" AssociatedControlID="TextBoxLastName" ID="LabelTextBoxLastName" runat="server" Text="Apellidos"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row mb-4">
                                                            <div class="form-floating">
                                                                <asp:TextBox ID="TextBoxBirthday" CssClass="form-control" TextMode="Date" placeholder="" runat="server"></asp:TextBox>
                                                                <asp:Label CssClass="m-1" AssociatedControlID="TextBoxBirthday" ID="LabelTextBoxBirthday" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row mb-4">
                                                            <div class="d-flex parent">
                                                                <asp:Label CssClass="mr-auto p-2 left" AssociatedControlID="radioButtonGender" ID="LabelRadioButtonGender" runat="server" Text="Genero: "></asp:Label>
                                                                <asp:RadioButtonList CssClass="mr-auto p-2" CellPadding="5" ID="radioButtonGender" RepeatDirection="Horizontal" runat="server">
                                                                    <asp:ListItem Text="Masculino" Value="Masculino"></asp:ListItem>
                                                                    <asp:ListItem Text="Masculino" Value="Femenino"></asp:ListItem>
                                                                </asp:RadioButtonList>
                                                                <div class="right"></div>
                                                            </div>
                                                        </div>
                                                        <div class="row mb-4">
                                                            <div class="form-floating">
                                                                <asp:TextBox ID="TextBoxPassword" CssClass="form-control" TextMode="Password" placeholder="" runat="server"></asp:TextBox>
                                                                <asp:Label CssClass="m-1" AssociatedControlID="TextBoxPassword" ID="LabelTextBoxPassword" runat="server" Text="Contraseña"></asp:Label>
                                                            </div>
                                                        </div>
                                                        <div class="row mb-4">
                                                            <div class="form-floating">
                                                                <asp:TextBox ID="TextBoxPhone" CssClass="form-control" TextMode="Number" placeholder="" runat="server"></asp:TextBox>
                                                                <asp:Label CssClass="m-1" AssociatedControlID="TextBoxPhone" ID="LabelTextBoxPhone" runat="server" Text="Numero telefonico"></asp:Label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                                    <asp:Button ID="ButtonRegister" class="btn btn-success btn-block" runat="server" Text="Registrarse" OnClick="ButtonRegister_Click" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Modal -->
                                    <div class="modal fade" id="mymodal" role="dialog">
                                        <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"></button>
                                                    <h4 class="modal-title">Modal Header</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <p id="error"></p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="Files/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
        function ShowPopup(title, body) {
            $("#MyPopup .modal-title").html(title);
            $("#MyPopup .modal-body").html(body);
            $("#MyPopup").modal("show");
        }
    </script>
</body>
</html>
