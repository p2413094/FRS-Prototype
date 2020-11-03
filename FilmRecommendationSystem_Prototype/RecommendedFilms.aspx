<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RecommendedFilms.aspx.cs" Inherits="RecommendedFilms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender | Recommended films</title>
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
                        <a href="FilmInformation.aspx">The Terminator (1984)</a>
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
        <br />

        <div class="page-header">
            My recommended films  
        </div>  
        <section class="film">
        <br />
        <br />
        
        <section class="watchlist">
            <a href="TheTerminator.aspx">
                <img src="Images/Terminator.jpg" class="image">
            </a>
            <img src="Images/Alien.jpg" class="image">
            <img src="Images/Raiders of the Lost Ark.jpg" class="image">
            <img src="Images/The Shawshank Redemption.jpg" class="image">
            <img src="Images/The Bridge on the River Kwai.jpg" class="image">
        </section>

        <script>
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