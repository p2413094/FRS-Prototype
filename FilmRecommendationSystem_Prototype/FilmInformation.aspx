<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FilmInformation.aspx.cs" Inherits="FilmInformation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender</title>
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

        <section class="film">
            <div class="header">The Terminator (1984)</div>
            <br />
            <br />
            </div>
            <br />

            <div class="container">
                <div>
                    <img src="Images/Terminator.jpg" alt="Avatar" class="image">   
                    <div class="overlay-left">
                        <img id="imgWatchLater" onclick="imgWatchLaterClick()" class="watchlaterfavouriteicon" src="Images/WatchLater.png">
                    </div>
                    <div class="overlay-right">
                        <img id="imgFavourite" onclick="imgFavouriteClick()" class="watchlaterfavouriteicon" src="Images/Favourite.png">
                    </div>    
                </div>
                
                <div>
                    <div class="rating-container">
                        <div class="rating-heading">My rating:</div>
                        <div id="imgRating" class="ratingimage-container" onclick="imgRatingClick()">
                            <img id="star1" src="Images/Favourite.png" class="ratingimage-imagesize" />
                            <img id="star2" src="Images/Favourite.png" class="ratingimage-imagesize" />
                            <img id="star3" src="Images/Favourite.png" class="ratingimage-imagesize" />
                            <img id="star4" src="Images/Favourite.png" class="ratingimage-imagesize" />
                            <img id="star5" src="Images/Favourite.png" class="ratingimage-imagesize" />
                        </div>    
                    </div>
                </div>

                <div>
                    <div class="tag-container">
                        <div class="tag-heading">My tags: </div>
                        <div id="divTags" class="tags">
                            emotional, greatest, incredible
                            
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <button onclick="btnAddTagClick()" id="btnAddTag" class="button-addtag" type="button">ADD TAG</button>
                        <div class="tagentrycontainer">
                            <input id="txtTag" class="tagentryfield" type="text" placeholder="Enter new tag here..." />
                        </div>
                    </div>
                </div>


            </div>

                


            <div class="filminformation">
                <div class="information-header">Description</div>
                <br />
                A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, 
                sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to 
                humanity's future salvation.
                <br />

                <p class="information-header">Genre</p>
                Action, Sci-Fi
                <br />
                <br />

                <p class="information-header">Age rating</p>
                <img src="Images/15.png" class="image-agerating" alt="15" />
                <br />
                <br />
                
                <p class="information-header">Director</p>
                James Cameron
                <br />
                <br />
                
                <p class="information-header">Runtime</p>
                107 mins
                <br />   
            </div>
        </section>

        <script type="text/javascript">
            function imgWatchLaterClick() {
                document.getElementById("imgWatchLater").onclick = function () {
                    document.getElementById("imgWatchLater").src = "Images/WatchLaterAdded.png";
                }
            }

            function imgFavouriteClick() {
                document.getElementById("imgFavourite").onclick = function () {
                    document.getElementById("imgFavourite").src = "Images/FavouriteInList.png";
                }
            }

            function imgRatingClick() {
                document.getElementById("imgRating").onclick = function () {
                    document.getElementById("star1").src = "Images/FavouriteInList.png";
                    document.getElementById("star2").src = "Images/FavouriteInList.png";
                    document.getElementById("star3").src = "Images/FavouriteInList.png";
                    document.getElementById("star4").src = "Images/FavouriteInList.png";
                    document.getElementById("star5").src = "Images/FavouriteInList.png";
                }
            }

            function btnAddTagClick() {
                document.getElementById("btnAddTag").onclick = function () {
                    var newTag = document.getElementById("txtTag").value;
                    var tags = document.getElementById("divTags");
                    tags.innerHTML += newTag;
                }
            };
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
