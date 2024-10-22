<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test_01.aspx.cs" Inherits="TestApplication.Student.Test_01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    <style>
        #alertMessage {
            opacity: 0;
            transition: opacity 1.5s ease-in-out;
            display: none; /* Initially hide the alert */
        }

            #alertMessage.show {
                opacity: 1;
                display: block; /* Show the alert when the show class is added */
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:HiddenField ID="hfShowAlert" runat="server" />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary" />

        <%--<div id="alertMessage" runat="server" class="alert alert-danger d-flex align-items-center" role="alert">
            <i class="bi bi-exclamation-triangle-fill me-2"></i>&nbsp;
            <div> An example danger alert with an icon </div>
        </div>--%>
        <div id="alertMessage" runat="server" class="alert alert-success d-flex align-items-center" role="alert">
            <i class="bi bi-check-circle-fill me-2"></i>&nbsp;
   
            <div>Subject Submitted Successfully!</div>
        </div>

    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var showAlert = document.getElementById('<%= hfShowAlert.ClientID %>').value;
           if (showAlert === 'true') {
               setTimeout(function () {
                   var alertElement = document.getElementById('<%= alertMessage.ClientID %>');
                    alertElement.classList.add('show');
                }, 100); // Delay to ensure the element is rendered before applying the class
           }
       });
    </script>
</body>
</html>
