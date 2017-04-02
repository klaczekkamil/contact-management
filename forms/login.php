<?php
/**
 * Created by PhpStorm.
 * User: Kamil Klaczek
 * Date: 31.03.2017
 * Time: 16:03
 */
    session_start();

    if ((!isset($_POST['login'])) || (!isset($_POST['password']))){
        header('Location: index.php');
        exit();
    }


    require_once "connect.php";

    $connection = @new mysqli($host, $db_user, $db_password, $db_name);

    //@ oznacza, że w razie wystąpienia błędów, php nie poinformuje nas o nich

    if ($connection->connect_errno!=0){
        echo "Error". $connection->connect_errno;
    }
    else {
        function filtration($variable){
            $variable = htmlentities($variable , ENT_QUOTES, "UTF-8");
            //filtrujemy, konwertujemy na encję zabezpieczajac przed tak zwanym wstrzykiwaniem mysql, ENT_QUOTES nakazuje różnież zmianę apostrofów i cudzysłowiów
            $variable =
            return $variable;
        }

        $login = filtration($_POST['login']);
        $password = filtration($_POST['password']);

        //$sql = "SELECT * FROM User WHERE login='$login' AND password ='$password'";

        if ($result = @$connection->query(
            sprintf("SELECT * FROM User WHERE login='%s' AND password ='%s'", //sprintf pilnuje typu danych, %s wskazuje gdzie będziemy wkładać zmienne 's' oznacza typ zmiennej czyli string w tym przypadku
            mysqli_real_escape_string($connection, $login), // pierwszy argument
            mysqli_real_escape_string($connection, $password) // drugi argument
            ))){

            /*
             * mysqli_real_escape_string
             * funkcja do używania na ciągu znaków w celu ochrony przed wstrzykiwaniem sql
             *
             */
            $how_many_users = $result->num_rows;

            if ($how_many_users > 0){
                $_SESSION['logged'] = true;

                $row = $result->fetch_assoc(); //tablica asocjacyjna
                $_SESSION['id'] = $row['id'];
                $_SESSION['user'] = $row['login'];

//                echo $_SESSION['user'];

                unset($_SESSION['error']);
                $result->free_result();
                header('Location: ../panel.php');


            }
            else {
                $_SESSION['error'] = '<div class="alert-danger clearfix mbt30 mtp30">Niepoprawne login lub hasło</div>';

                header('Location: ../index.php');

            }
        }

        $connection->close();
    }


?>