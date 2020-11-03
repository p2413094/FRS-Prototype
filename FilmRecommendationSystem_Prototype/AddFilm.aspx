<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddFilm.aspx.cs" Inherits="AddFilm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender | Add new film</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>

<body class="body" onload="onload()">
    <form runat="server">
        <p class="logo textlink">
            <a href="Homepage.html">FILM RECOMMENDER</a>
        </p>

        <br />
        <br />
        <br />
        <div class="navbar">
            <div class="dropdown">
                <button class="dropbtn">MY ACCOUNT 
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">

                    <div class="imagecontainer">
                        <img class="imagedimensions" src="Images/WatchLater.png">
                    </div>
                    <a href="WatchList.aspx">WATCHLIST</a>
                    <br />
                    <br />
                    <br />

                    <div class="imagecontainer">
                        <img class="imagedimensions" src="Images/FavouriteInList.png">
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
                <input autocomplete="off" class="textentry-field" type="text" oninput="myFunction()" id="myInput" onkeyup="filterFunction()" />
                <div>
                    <div id="myDropdown" class="searchdropdown-content">
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
        <div class="account">
            <p class="page-header">
                Add new film 
            </p>

            <div class="textentry-label">
                Film title*
            </div>
            <div class="textentry-field">
                <input id="txtFilmTitle" type="text" class="textentry-fieldsize" placeholder="e.g. Top Gun" />
            </div>
            
            <div id="lblEmailErrorMessage" class="emailerrormessage">
            </div>

            <br />
            <br />
            <br />

            <div class="textentry-label">
                Year released*
            </div>
            <div class="textentry-field">
                <input id="txtYearReleased" type="text" class="textentry-fieldsize" placeholder="1986" />
            </div>
            <br />
            <br />
            <br />

            <div class="textentry-label">
                Genre(s)*
            </div>
            <div class="textentry-field">
                <input id="txtGenre" type="text" placeholder="Action, thriller" class="textentry-fieldsize" />
            </div>
            <br />
            <br />
            <br />
            <div class="textentry-label">
                IMDB id
            </div>
            <div class="textentry-field">
                <input type="text" placeholder="tt2316204" class="textentry-fieldsize" />
            </div>
            <br />
            <br />
            <br />
            <div class="textentry-label">
                tmIMDB id
            </div>
            <div class="textentry-field">
                <input type="text" placeholder="126889" class="textentry-fieldsize" />
            </div>

            <br />
            <br />
            <br />
            <div class="smallmessage">
                * denotes mandatory field
            </div>

            <div id="test2" class="smallmessage">
                <label id="lblNewError">Test</label>
            </div>


            <br />
            <br />
            <div class="filmrecommendation-getrecommendationsbutton">
                <button type="button" onclick="btnAddNewFilm_Click()" class="Addnewfilm-button" >ADD NEW FILM</button>
            </div>
       

        </div>            

        

        <script>

            var filmTitle,
                genre;

            function onload() {
                document.getElementById("lblNewError").style.visibility = "visible";
            }

            function testFunction() {
                //var filmTitle = document.getElementById("txtFilmTitle").value;
                document.getElementById("test2").style.visibility = "hidden";
                document.getElementById("lblNewError").style.visibility = "hidden";
                document.getElementById("txtFilmTitle").style.border="2px solid red";

                
            }

            function CheckNewFilm() {
                document.getElementById("txtFilmTitle").value;
            }




            function btnAddNewFilm_Click() {
                var addFilm = 0;
                var confirmMessage = confirm("Add new film to database?");
                if (confirmMessage == true) {
                    alert("Film added!");
                    addFilm = 1;
                }
                else {
                    alert("Film not added");
                }


                var filmTitle = document.getElementById("txtFilmTitle").value,
                    yearReleased = document.getElementById("txtYearReleased").value,
                    genre = document.getElementById("txtGenre").value;

                sessionStorage.setItem("addFilm", addFilm);
                sessionStorage.setItem("filmTitle", filmTitle);
                sessionStorage.setItem("yearReleased", yearReleased);
                sessionStorage.setItem("genre", genre);

                location.href = "AllFilms.aspx";
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