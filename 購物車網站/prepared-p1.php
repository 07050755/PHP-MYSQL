<?php
// 創建連接
$link = mysqli_connect("localhost", "root", "ite05240", "mydb");

// 檢測連接
if ($link === false) {
    ("ERROR: Could not connect. " . mysqli_connect_error());
}
mysqli_query($link, "CREATE TABLE IF NOT EXISTS Test(name VARCHAR(255), age INT)");

// 預處理及綁定
$stmt = mysqli_prepare($link, "insert into Test (name, age) values(?, ?)");
mysqli_stmt_bind_param($stmt, "si", $name, $age);

// 設置參數並執行
$name = "Raju";
$age = 25;
mysqli_stmt_execute($stmt);

$name = "Rahman";
$age = 30;
mysqli_stmt_execute($stmt);

$name = "Sarmista";
$age = 30;
mysqli_stmt_execute($stmt);
mysqli_stmt_close($stmt);

//Reading records
$stmt = mysqli_prepare($link, "SELECT * FROM Test");

//Executing the statement
mysqli_stmt_execute($stmt);

//Storing the result
mysqli_stmt_store_result($stmt);

//Number of rows
$count = mysqli_stmt_num_rows($stmt);
print("Number of rows in the table: ".$count."<br>");
mysqli_stmt_bind_result($stmt, $name, $age);
while(mysqli_stmt_fetch($stmt)){
    echo $name . "," . $age . "<br>";
}

//Closing the statement
mysqli_stmt_close($stmt);
mysqli_close($link)
?>