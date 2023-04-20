<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <!--<meta name="viewport" content="width=device-width">-->
  <link href="ceo_style.css" rel="stylesheet" type="text/css" />
</head>

<body>
  <h1>Welcome, CEO</h1>
  <script src="ceo_script.js"></script>

  <section id="overview">
    <button id="OStoggle" onclick="toggleOS()">Show Office Summary</button>
    <button id="DStoggle" onclick="toggleDS()">Show Doctor Summary</button>
    <button id="RStoggle" onclick="toggleRS()">Show Revenue Summary</button>
  </section>

  <section id="OSV">
    <h2 id="OfficeSummary">Office Summary</h2>
    <form action = "office_report.php" method = "GET">
      <label for = "OSVinput"># of Departments:</label>
      <input type = "text" id = "OSVinput" OSVinput = "OSVinput" name = "OSVinput">

      <label for = "OSVinput2"># of Specialists:</label>
      <input type = "text" id = "OSVinput2" OSVinput = "OSVinput2" name = "OSVinput2">
      <button type = "submit" id = "OSVsubmit" name = "OSVsubmit">View Office Report</button>
      <button type = "submit" id = "OSVcreate" name = "OSVcreate" formaction = "office_create.php">Add Office</button>
    </form>
    
    <!--<form action = "office_update.php" method = "GET">
      <button type = "submit" id = "OSVupdate" name = "OSVupdate"> Update Office</button>
    </form>-->
  </section>

  <section id="DSV">
    <h2 id="DoctorSummary">Doctor Summary</h2>
    <form action = "doctor_report.php" method = "GET">
      <label for = "DSVinput">Salary:</label>
      <input type = "text" id = "DSVinput" DSVinput = "DSVinput" name = "DSVinput">

      <label for = "DSVinput2">Office ID:</label>
      <input type = "text" id = "DSVinput2" DSVinput = "DSVinput2" name = "DSVinput2">
      <button type = "submit" id = "DSVsubmit" name = "DSVsubmit">View Doctor Report</button>

      <button type = "submit" name = "submit_s" formaction = "createSpecialist.php">Add New Specialist</button><br></br>
      <button type = "submit" name = "submit_s" formaction = "createPhysician.php">Add New Physician, this doesnt do anything yet></button>
      </form>
  </section>

  <section id="RSV">
    <h2 id="Revenue Summary">Revenue Summary</h2>
    <form action = "revenue_report.php" method = "GET">
      <label for = "RSVinput">Revenue:</label>
      <input type = "text" id = "RSVinput" RSVinput = "RSVinput" name = "RSVinput">
      <button type = "submit" id = "RSVsubmit" name = "RSVsubmit">View Revenue Report</button>
    </form>
    <form action = "revenue_report2.php" method = "GET">
      <button type = "submit" id = "RSVsubmit2" name = "RSVsubmit2">Overbudget Offices</button>
    </form>
  </section>
</body>

<footer>
  <address>Main Office: 1234 Oaks Dr.</address>
  <p>Established: 1980-04-07</p>
</footer>

</html>
