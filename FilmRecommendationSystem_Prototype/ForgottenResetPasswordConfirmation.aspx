<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgottenResetPasswordConfirmation.aspx.cs" Inherits="ForgottenResetPasswordConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender | Reset password</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>

<body class="body">
    <form runat="server">
        <p class="logo textlink">
            <a href="Homepage.aspx">FILM RECOMMENDER</a>
            <ul>
                <br />
                <br />
                <br />
                <li><a href="Register.aspx">REGISTER</a></li>
                <li><a href="Login.aspx">SIGN IN</a></li>
            </ul>
        </p>

        <br />
        <br />

        <section class="search">
            <div class="textentry-label">
                SEARCH
            </div>
            <div class="textentry-container">
                <input autocomplete="off" class="textentry-field" type="text" oninput="myFunction()" id="myInput" onkeyup="filterFunction()">
                <div>
                    <div id="myDropdown" class="dropdown-content">
                        <a href="FilmInformation2.aspx">The Terminator (1984)</a>
                        <a>Little Women (2019)</a>
                    </div>
                </div>
                <br />
                <br />
            </div>
        </section>


        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="account">
            <p class="page-header">
                Reset password
            </p>
            <br />
            <br />
            <div class="text">
                An email has been sent to the email address you specified. 
                Once you've got the email, simply click on reset my password and you're
                then free to use the service!
            </div>
            <br />
            <br />
            <div>
                <button type="button" onclick="btnOk_Click()" id="btnOk" class="okbutton">Ok</button>
            </div>
            <br />
            
        <br />
        <br />
        <script type="text/javascript">
            function btnOk_Click() {
                document.getElementById("btnOk").onclick = function () {
                    location.href = "Homepage.aspx";
            };
            }

            /* When the user clicks on the button,
            toggle between hiding and showing the dropdown content */
            function myFunction() {
            document.getElementById("myDropdown").classList.toggle("show");
            }

            function filterFunction() {
            var input, filter, ul, li, a, i;
            input = document.getElementById("myInput");
            filter = input.value.toUpperCase();
            div = document.getElementById("myDropdown");
            a = div.getElementsByTagName("a");
            for (i = 0; i < a.length; i++) {
                txtValue = a[i].textContent || a[i].innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                a[i].style.display = "";
                } else {
                a[i].style.display = "none";
                }
            }
        }
        </script>
        <div class="footer">
            © 2020 FILM RECOMMENDER. All rights are reserved. Site NOT for rollout unless for demonstration purposes.
        </div>
        
    </form>
    
</body>
    </html>