﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyAccountAdministrator.aspx.cs" Inherits="MyAccountAdministrator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Film recommender | My account</title>
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
                <button id="btnMyAccount" onclick="btnMyAccount_Clicked()" class="dropbtn">MY ACCOUNT 
                    <i class="fa fa-caret-down"></i>
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
                    <br />
                    <br />
                    <br />
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
        <div class="account">
            <p class="page-header">
                My account
            </p>
        </div>

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

        <button type="button" onclick="btnViewUsers_Clicked()" class="myaccount-options">VIEW ALL USERS</button>
        <br />
        <br />
        <button type="button" onclick="btnViewFilms_Clicked()" class="myaccount-options">VIEW ALL FILMS</button>
        <br />
        <br />
        <button type="button" onclick="btnViewStaffMembers_Clicked()" class="myaccount-options">VIEW ALL STAFF MEMBERS</button>
        <br />
        <br />
        <button type="button" onclick="btnViewPreviousStaffMembers_Clicked()" class="myaccount-options">VIEW PREVIOUS STAFF MEMBERS</button>


        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="myaccount">
            <section>
                <p class="header">Account details</p>

                <div>
                    <div class="section-container">
                        Email address: EllenRipley57
                    </div>
                </div>
                <br />
                <br />
                <br />

                <div>
                    <div class="section-container-password">
                        Password: *************
                    </div>

                </div>

                <div>
                    <div class="changepasswordcontainer">
                        <img class="changepasswordicon" id="imgChangePassword" onclick="imgChangePassword_Click()"
                            src="Images/Edit icon.png">
                    </div>
                </div>

                <br />
                <br />
                <br />

                <div>
                    <div class="section-container">
                        Last login: 11:38, 20/09/20
                    </div>
                </div>


            </section>
            <br />
            <br />
        </div>
        <br />
        <button type="button" id="btnCloseAccount" onclick="btnCloseAccount_Click()"  class="closeaccountbutton">CLOSE ACCOUNT</button>

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

        <script>
            function btnViewUsers_Clicked() {
                location.href = "AllUsers.aspx";
            }

            function btnViewStaffMembers_Clicked() {
                location.href = "AllStaffMembers.aspx";
            }

            function btnViewFilms_Clicked() {
                location.href = "AllFilms.aspx"
            }

            function btnCloseAccount_Click() {
                location.href = "CloseAccount.aspx"
            }

            function btnMyAccount_Clicked() {
                location.href = "CloseAccount.html";
            }

            function btnViewPreviousStaffMembers_Clicked() {
                location.href = "PreviousStaffMembers.aspx";
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
    </form>
</body>
</html>