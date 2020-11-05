<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FILM RECOMMENDER</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>

<body class="body" onload="onLoad()">
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
                <input autocomplete="off" class="textentry-field" type="text" id="myInput" onkeyup="filterSearchFunction()" />
                <div>
                    <div id="mySearchDropdown" class="searchdropdown-content">
                        <a href="FilmInformation2.aspx">Terminator 2: Judgment Day (1991)</a>
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

        <div>
            <p class="main-paragraph">
                Not sure what to watch? Don't worry!
            </p>
            <p class="main-paragraph__explanation">
                The problem with trying to find a new film to where to begin?! Here, 
                all you have to do below is enter in films that you know you like, hit the button and bam. Personalised recommendations just for you!
            </p>
        </div>


        <br />
        <br />
        <br />
        <br />

        <div class="film">
            <p class="homepage-subHeader">
                Enter a film you like to get started...
            </p>
            <br />

            
                <div class="filmSearch-dropdown">
                    <input type="text" id="filmName" onkeyup="filterFunction()" />

                    <div id="filmSearchDropdown" class="filmSearch-dropdown-content">
                      <a onclick="AddItemToLabel()"> Aliens (1986)</a>
                      <a onclick="AddGhostbustersToLabel()">Ghostbusters (1984)</a>
                      <a> Star Wars: Episode V - The Empire Strikes Back (1980) </a>
                      <a>Avengers: Endgame (2019)</a>
                    </div>
                </div>
            <br />
            <br />
            <br />
            <label id="lblFilmsAdded">Films added:</label>
            <br />
            <br />
            <button id="btnGetRecommendations" onclick="GetRecommendations()" class="getrecommendations-button" 
                type="button">GET RECOMMENDATIONS</button>

        </div>

        <br />
        <br />
        <section id="secYourRecommendations" class="watchlist">
            <div class="homepage-subHeader">
                Your recommendations
            </div>
            <a href="FilmInformation.aspx">
                <img src="Images/Terminator.jpg" class="image" />
            </a>
            <img src="Images/Alien.jpg" class="image" />
            <img src="Images/District 9.jpg" class="image" />
            <img src="Images/Ghostbusters.jpg" class="image" />
        </section>




        <br />
        <br />
        <br />
        <div class="homepage-mostRecommendedFilms">
            Most recommended films
        </div>

        <section class="watchlist">
            <img src="Images/Terminator.jpg" class="image" />
            <img src="Images/King Kong.jpg" class="image" />
            <img src="Images/TCM.jpg" class="image" />
            <img src="Images/Dunkirk.jpg" class="image" />
            <img src="Images/District 9.jpg" class="image" />
            <img src="Images/Tron Legacy.jpg" class="image" />
            <img src="Images/Ghostbusters.jpg" class="image" />
        </section>

        <br />
        <br />
        <br />
        <div class="homepage-mostRecommendedFilms">
            User favourite films
        </div>

        <section class="watchlist">
            <img src="Images/Endgame.jpg" class="image" />
            <img src="Images/Nosferatu.jpg" class="image" />
            <img src="Images/Bridesmaids.jpg" class="image" />
            <img src="Images/The World's End.jpg" class="image" />
            <img src="Images/Dunkirk.jpg" class="image" />
            <img src="Images/Tron Legacy.jpg" class="image" />
            <img src="Images/Ghostbusters.jpg" class="image" />
        </section>



        <script>
            
            function onLoad() {
                document.getElementById("lblFilmsAdded").style.visibility = "hidden";
                document.getElementById("btnGetRecommendations").style.visibility = "hidden";
                document.getElementById("secYourRecommendations").style.display = "none";
            }

            function GetRecommendations() {
                document.getElementById("secYourRecommendations").style.display = "block"
            };

            function AddItemToLabel() {
                document.getElementById("lblFilmsAdded").style.visibility = "visible";
                document.getElementById("lblFilmsAdded").innerText += "  Aliens (1986)";
                document.getElementById("filmSearchDropdown").style.visibility = "hidden";
                document.getElementById("filmName").value = "";
                document.getElementById("btnGetRecommendations").style.visibility = "visible";

            }

            function AddGhostbustersToLabel() {
                document.getElementById("lblFilmsAdded").innerText += ", Ghostbusters (1984)";
                document.getElementById("filmSearchDropdown").style.visibility = "hidden";
                document.getElementById("filmName").value = "";
            }


            //search bar for adding films to recommended 
            function filterFunction() {
                document.getElementById("filmSearchDropdown").style.visibility = "visible";
                document.getElementById("filmSearchDropdown").classList.toggle("filmSearch-show");
                var input, filter, ul, li, a, i;
                input = document.getElementById("filmName");
                filter = input.value.toUpperCase();
                div = document.getElementById("filmSearchDropdown");
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
           
            //Search bar at top of screen
            function filterSearchFunction() {
                document.getElementById("mySearchDropdown").classList.toggle("show");
                var input, filter, ul, li, a, i;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                div = document.getElementById("mySearchDropdown");
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
            <div class="links">
                <a target="blank" href="HelpPage.aspx">Help</a>
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
