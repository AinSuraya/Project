<?php
require 'conn.php';

$username = $_POST['username'];
$password = $_POST['password'];
#echo "$username | $password";
#exit; # test

    if($username =="admin")
    {
        $_SESSION['usrnm']=$username;
        $sql = "SELECT * FROM admin";
        $row = $conn->query($sql)->fetch_object();
        if($row->adminpassword == $password) {
            header('location: admin/');
        }
        else{
            ?>
            <script>
            alert('invalid');
            window.location='index.php';
            </script>
            <?php   
        }
    }
    elseif($username =="seller"){
        $_SESSION['usrnm']=$username;
        $sql = "SELECT * FROM seller";
        $row = $conn->query($sql)->fetch_object();
        if($row->sellerpassword == $password) {
            header('location: seller/');
        }
        else{
            ?>
            <script>
            alert('invalid');
            window.location='index.php';
            </script>
            <?php   
        }
    }
    else{ 
        $_SESSION['usrnm']= 'Username';
        $sql = "SELECT * FROM customer where username ='$username' and custpassword='$password'";
        $row = $conn->query($sql)->fetch_object();
        if($row->custpassword == $password) {
            $_SESSION['idcust']= $row->idcust;
            header('location: customer/');
        }
        else{
            ?>
            <script>
            alert('Invalid');
            window.location='index.php';
            </script>
            <?php   
        }
    }