﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FavouriteFilms.aspx.cs" Inherits="FavouriteFilms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender | My WatchList</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>

<body class="body">
    <form runat="server">
        <p class="logo textlink">
            <a href="Homepage.aspx">FILM RECOMMENDER</a>
        </p>

        <br />
        <br />
        <br />
        <div class="navbar">
            <div class="dropdown">
                <button class="dropbtn">
                    <a href="MyAccount.aspx" class="menutext">MY ACCOUNT</a>
                </button>
                <div class="dropdown-content">

                    <div class="imagecontainer">
                        <img class="imagedimensions" src="Images/RecommendedFilms.png" />
                    </div>
                    <a href="RecommendedFilms.aspx">RECOMMENDATIONS</a>
                    <br />
                    <br />
                    <br />

                    <div class="imagecontainer">
                        <img class="imagedimensions" src="Images/WatchLater.png" />
                    </div>
                    <a href="WatchList.aspx">WATCHLIST</a>
                    <br />
                    <br />
                    <br />

                    <div class="imagecontainer">
                        <img class="imagedimensions" src="Images/FavouriteInList.png" />
                    </div>
                    <a href="FavouriteFilms.aspx">FAVOURITES</a>
                    <br />
                    <br />
                    <br />

                    <div class="imagecontainer">
                        <img class="imagedimensions" src="Images/Log out.png" />
                    </div>
                    <a href="Homepage.aspx">LOG OUT</a>
                </div>
              </div> 
            </div>

        <br />
        <br />
        <br />
        <br />
        <br />

        <section class="search">
            <div class="textentry-label">
                SEARCH
            </div>
            <div class="textentry-container">
                <input type="text" class="textentry-field" />
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
            My favourite films  
        </div>  
        <br />
        <br />
        <br />
        <br />

        <div id="filmToBeRemoved" class="newwatchlist">
            <img src="Images/Dune.jpg" class="image" />
            <div class="overlay">
                <img id="imgRemove" onclick="imgRemoveClick()" class="watchlatericon" src="Images/Remove.png" />
            </div>
        </div>
        
        <section class="watchlist">
            <a href="FilmInformation.aspx">
                <img src="Images/Terminator.jpg" class="image" />
            </a>
            <img src="Images/Aliens.jpg" class="image" />
            <img src="Images/TCM.jpg" class="image" />
            <img src="Images/Dunkirk.jpg" class="image" />
            <img src="Images/District 9.jpg" class="image" />
            <img src="Images/Tron Legacy.jpg" class="image" />
            <img src="Images/Ghostbusters.jpg" class="image" />
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
            }}

            function imgRemoveClick() {
                document.getElementById("filmToBeRemoved").style.display = "none";
            }
        </script>
         
        <div class="footer">
            <div class="links">
                Help
            </div>
            <div class="footercopyright">
                © 2020 FILM RECOMMENDER
                <br />
                All rights are reserved
                <br />
                Site NOT for rollout
            </div>
        </div>
    </form>
</body>
</html>