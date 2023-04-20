<form action = "CEO.php">
<style>
    body {
      background-color: lightgray;
    }
    
    table, th, td {
    border: 2px solid rgb(2, 2, 2);
    table-layout: fixed;
    margin-left: auto;
    margin-right: auto;
    width: 75%;
    text-align: center;
    }
</style>
<table>
  <tr>
    <th>Office ID</th>
    <th>Address</th>
    <th>Number of Departments</th>
    <th>Number of Specialists</th>
  </tr>
  <?php
    include_once 'connectToTheDB.php';

    $OSVinput = $_GET['OSVinput'];
    $OSVinput2 = $_GET['OSVinput2'];
    $sql = "SELECT * 
            FROM office_info
            WHERE Number_Of_Departments >= '$OSVinput' AND Number_Of_Specialist >= '$OSVinput2';";
    $result = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($result);

    //If error, add $ infront of OSVinput and OSVinput2 in the WHERE clause of sql2. Other issues might arrise from AND and ';"

    if($resultCheck > 0) {
      while($row = mysqli_fetch_assoc($result)) {
        echo "<tr><td>" . $row["OFFICE_ID"] . "</td><td>" . $row["ADDRESS"] . "</td><td>" . $row["Number_Of_Departments"] . "</td><td>" . $row["Number_Of_Specialist"] . "</td></tr>";
      }
    } else {
      echo "No office found";
    }
  ?>
</table>
<br></br>
<button type = "submit" name = "submit" >Return to the main page</button>
</form>