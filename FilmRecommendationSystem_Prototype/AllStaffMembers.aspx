<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllUsers.aspx.cs" Inherits="AllUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Film recommender | All staff members</title>
    <link rel="stylesheet" href="StyleSheet.css" />
</head>

<body class="body" onload="onLoad()" >
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
                All staff members
            </p>
            <br />
            <br />
            <img src="Images/Add_plus icon.png" class="allstaffmembers-add" onclick="imgAdd_Clicked()" />

        <br />
        <br />
        <br />
        <br />
        <br />
        <br />

            <div>
                <table>
                    <tr>
                        <th id="UserId">UserId</th>
                        <th id="firstName">First name</th>
                        <th id="lastName">Last name</th>
                        <th id="PrivilegeLevel">Privilege level</th>
                        <th id="Confirmed">Confirmed?</th>                 
                        <th id="Suspended">Suspended?</th>
                        <th id="Actions">Actions</th>
                    </tr>

                    <tr id="rowHouse">
                        <td>#1</td>
                        <td>
                            <input class="textbox-transparent" value="Greg" readonly="true" id="txtFirstName" type="text"/>
                        </td>
                        <td>House</td>
                        <td>Standard</td>
                        <td>Y</td>
                        
                        <td><label id="lblSuspended">N</label></td>
                        <td class="tablecell-actions" id="cellTableActions">
                            <img src="Images/Edit%20icon.png" class="action_icon" onclick="btnEdit_Clicked()" id="icnEdit" />
                            <img src="Images/NoIcon.png" id="iconSuspendUser" class="action_icon" onclick="btnSuspend_Clicked()"/>
                            <img src="Images/TrashCanRed.png" class="action_icon" onclick="imgDelete_Clicked()"/>
                        </td>
                    </tr>

                    <tr>
                        <td>#13</td>
                        <td>Remy</td>
                        <td>Hadley</td>
                        <td>Administrator</td>
                        <td>Y</td>
                        <td>Y</td>
                        <td></td>
                        
                    </tr>

                    <tr id="rowAdd">
                        <td>#14</td>
                        <td>
                            <input type="text" class="textbox-transparent" id="txtAddFirstName"/>
                        </td>
                        <td>
                            <input type="text" class="textbox-transparent" id="txtAddLastName"/>
                        </td>
                        <td>
                            <input type="text" class="textbox-transparent" id="txtAddPrivilegeLevel"/>
                        </td>
                        <td>N</td>
                        <td>N</td>
                        <td>
                        </td>
                    </tr>
                
                </table>
            </div>
         
            <br />
            <br />
        </div>

        <script>
            var count = 0,
                suspended = false;

            function onLoad() {
                document.getElementById("rowAdd").style.visibility = "hidden";
            }

            function imgAdd_Clicked() {
                document.getElementById("rowAdd").style.visibility = "visible";
                //document.getElementById("txtAddFirstName").style.border = "1px solid white";
                document.getElementById("txtAddLastName").style.border = "1px solid white";
                document.getElementById("txtAddPrivilegeLevel").style.border = "1px solid white";
            }


            function btnEdit_Clicked() {
                //location.href = "EditUser.aspx";
                document.getElementById("txtFirstName").readOnly = false;
                document.getElementById("icnEdit").src = "Images/Green%20tick_save.png";

                if (count != 0) {
                var confirmMessage = confirm("Are you sure you want to update the record?");
                if (confirmMessage == true) {
                    alert("Record updated");
                    document.getElementById("icnEdit").src = "Images/Edit%20icon.png";
                    document.getElementById("txtFirstName").readOnly = true;

                }
                else {
                    alert("Record was not updated");
                    document.getElementById("txtFirstName").value = "Greg";
                }
                }
                count++;

            }           

            function imgDelete_Clicked() {
                document.getElementById("rowHouse").style.display = "none";
                var confirmMessage = confirm("Delete staff member?");
                if (confirmMessage == true) {
                    alert("Staff member deleted");
                }
                else {
                    alert("Staff member was not deleted");
                }
            }
            
            function btnSuspend_Clicked() {
                if (suspended == true) {
                    var confirmMessage = confirm("Un-suspend staff member?");
                    if (confirmMessage == true) {
                        document.getElementById("lblSuspended").innerText = "N";
                        alert("Staff member un-suspended");
                        suspended = true;
                    }
                    else {
                        alert("Staff member is still suspended");
                    }
                }

                else {
                    var confirmMessage = confirm("Suspend staff member?");
                    if (confirmMessage == true) {
                        document.getElementById("lblSuspended").innerText = "Y";
                        alert("Staff member suspended");
                        suspended = true;
                    }
                    else {
                        alert("Staff member was not suspended");
                    }
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
</html>