<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CloseAccountConfirmed.aspx.cs" Inherits="CloseAccountConfirmed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender | Close account</title>
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
        <br />
        <br />
        <div class="account">
            <p class="page-header">
                Close account success
            </p>
            <p class="page-subheader">
                Your account was successfully deleted  
            </p>
                        <br />
            <br />
            <button type="button" onclick="btnReturnToHomepage_Click()" class="deleteaccountbutton" id="btnReturnToHomepage">Return to homepage</button>

        </div>

        <script >
            function btnReturnToHomepage_Click() {
                document.getElementById("btnReturnToHomepage").onclick = function () {
                    location.href = "Homepage.aspx";
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
            }}
            }
        </script>
        
        <div class="footer">
            © 2020 FILM RECOMMENDER. All rights are reserved. Site NOT for rollout unless for demonstration purposes.
        </div>
    </form>
</body>

