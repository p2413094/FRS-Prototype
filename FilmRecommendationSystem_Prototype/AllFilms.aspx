<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllFilms.aspx.cs" Inherits="AllFilms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender | All films</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>

<body class="body" onload="onLoad()">
    
    <form runat="server">
        <p class="logo textlink">
            <a href="Homepage.aspx">FILM RECOMMENDER</a>
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
                All films 
            </p>

            <button class="Addnewfilm-button" onclick="btnAddNewFilm_Clicked()" type="button">ADD NEW FILM</button>
            
            <br />
            <br />
            <br />

            <div>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Year released</th>
                        <th>Genre(s)</th>
                        <th>IMDB id</th>
                        <th>TMIMDB id</th>
                        <th id="Actions">Actions</th>
                    </tr>

                    <tr id="rowToyStory">
                        <td>Toy Story</td>
                        <td>1995</td>
                        <td>Adventure, animation</td>
                        <td>0114709</td>
                        <td>
                            01111
                        </td>
                        
                        <td class="tablecell-actions" id="cellTableActions">
                            <img src="Images/Edit%20icon.png" class="action_icon" onclick="btnEdit_Clicked()" />
                            <img src="Images/TrashCan.png" class="action_icon" onclick="DeleteFilm()" />
                        </td>
                        
                    </tr>

                    <tr>
                        <td>The Incredibles</td>
                        <td>2004</td>
                        <td>Adventure, animation, Disney</td>
                        <td>0317705</td>
                        <td>9806</td>
                    </tr>

                    <tr>
                        <td>Cars</td>
                        <td>2006</td>
                        <td>Animation, Comedy, Disney</td>
                        <td></td>
                        <td>9806</td>
                      
                    </tr>

                    <tr id="rowNewFilm">
                        <td><label id="lblFilmTitle"></label></td>
                        <td><label id="lblYearReleased"></label></td>
                        <td><label id="lblGenre"></label></td>
                        <td></td>
                        <td></td>
                    </tr>
                </table>
            </div>
            
            <div>
                
            </div>
            <br />
            <br />

        </div>

        <script>

            function onLoad() {

                var addFilm = sessionStorage.getItem("addFilm");

                if (addFilm != 0) {
                    document.getElementById("lblFilmTitle").innerHTML = sessionStorage.getItem("filmTitle");
                    document.getElementById("lblYearReleased").innerHTML = sessionStorage.getItem("yearReleased");
                    document.getElementById("lblGenre").innerHTML = sessionStorage.getItem("genre");
                }
                else {
                    document.getElementById("rowNewFilm").style.visibility = "hidden";
                }
            }
                          
            function btnAddNewFilm_Clicked() {
                location.href = "AddFilm.aspx";
            }


            function btnEdit_Clicked() {
                document.getElementById("txtImdbid").readOnly = false;
            }
           
            function DeleteFilm() {
                var confirmMessage = confirm("Delete film?");
                if (confirmMessage == true) {
                    alert("Film has been successfully deleted");
                    document.getElementById("rowToyStory").style.display = "none";
                }
                else {
                    alert("Film not deleted")
                }
            }

            function UnsuspendUserAccount() {
                var confirmMessage = confirm("Unsuspend user account?");
                if (confirmMessage == true) {
                    alert("User unsuspended");
                    document.getElementById("btnUnsuspend").innerText = "Suspend user";
                }
                else {
                    alert("User still suspended")
                }
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
        
        <br />
        <br />
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