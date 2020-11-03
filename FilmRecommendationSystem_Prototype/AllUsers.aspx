﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllUsers.aspx.cs" Inherits="AllUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender | All users</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>

<body class="body">
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
                        <img class="imagedimensions" src="Images/Log out.png">
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
                <input autocomplete="off" class="textentry-field" type="text" oninput="myFunction()" id="myInput" onkeyup="filterFunction()">
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
                All users 
            </p>

            <div>
                <table>
                    <tr>
                        <th id="Username">Username</th>
                        <th id="Email">Email</th>
                        <th id="PhoneNumber">Phone number</th>
                        <th id="EmailPhoneConfirmed">Email/ phone confirmed?</th>
                        <th id="LastLogin">Last login</th>
                        <th id="AccountCreated">Account created</th>
                        <div>
                            <th id="Actions">Actions</th>
                        </div>
                    </tr>

                    <tr>
                        <td>GreatestEver98</td>
                        <td>greatestever98@icloud.com</td>
                        <td>01902714537</td>
                        <td>Yes/ No</td>
                        <td>19:10, 20/10/20</td>
                        <td>26/04/20</td>
                        <td>
                            <button type="button" onclick="btnEdit_Clicked()" >Edit</button>
                            <button type="button" id="btnSuspendUser" onclick="SuspendUserAccount()">Suspend</button>
                        </td>
                    </tr>

                    <tr>
                        <td>SecondGreatestEver99</td>
                        <td>secondgreatestever99@icloud.com</td>
                        <td>0121765432</td>
                        <td>Yes/ Yes</td>
                        <td>17:34, 28/10/20</td>
                        <td>01/05/20</td>
                        <td>
                            <button type="button" onclick="btnEdit_Clicked()" >Edit</button>
                            <button type="button">Delete</button>
                            <button type="button" id="btnUnsuspend" onclick="UnsuspendUserAccount()">Unsuspend user</button>
                        </td>
                    </tr>
                
                </table>
            </div>

            
            <div>
                
            </div>
            <br />
            <br />
        </div>

        <script>
            function btnEdit_Clicked() {
                location.href = "EditUser.aspx";
            }
           
            function SuspendUserAccount() {
                var confirmMessage = confirm("Suspend user account?");
                if (confirmMessage == true) {
                    alert("User suspended");
                    document.getElementById("btnSuspendUser").innerText = "Unsuspend user";
                }
                else {
                    alert("User not suspended")
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
        <div class="footer">
            © 2020 FILM RECOMMENDER. All rights are reserved. Site NOT for rollout unless for demonstration purposes.
        </div>
    </form>
</body>