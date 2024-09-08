<?php

if(isset($_POST['id'])){
    require '../db_conn.php';

    $id = $_POST['id'];

    if(empty($id)){
       echo 'error';
    }else {
        $todos_list = $conn->prepare("SELECT id, checked FROM todos_list WHERE id=?");
        $todos_list->execute([$id]);

        $todo = $todos_list->fetch();
        $uId = $todo['id'];
        $checked = $todo['checked'];

        $uChecked = $checked ? 0 : 1;

        $res = $conn->query("UPDATE todos_list SET checked=$uChecked WHERE id=$uId");

        if($res){
            echo $checked;
        }else {
            echo "error";
        }
        $conn = null;
        exit();
    }
}else {
    header("Location: ../index.php?mess=error");
}