<?php 
    include_once 'connectToTheDB.php';

    $Patient_ID = $_POST['Patient_ID'];
    $Appointment_Time = $_POST['Appointment_Time'];
    $Appointment_Time_N = $_POST['Appointment_Time_N'];

    $sql = "UPDATE appointments
            SET appointments.Appointment_Time = '$Appointment_Time_N'
            WHERE appointments.Appointment_Time = '$Appointment_Time' AND appointments.Flagged_Delete = 0;";
    $result = mysqli_query($conn, $sql);

    if($result){
        echo "You appointment has been rescheduled";
    }
    else{
        echo "Sorry it looks that we are not able to change your appointment to this date and time";
    }
?>
<form action = "patient.php">
    <button type = "submit" name = "submit" >Return to the main page</button>
</form>