<?php
    if(!isset($_POST['posted'])){ header("Location: index.php"); exit(); }
    require_once 'database.php';
    $db = new DBase;
    $vhid = $db->query("SELECT `hidden` FROM qa");
    $points = 0;
    for($i=0; $i<count($vhid); $i++)
    {
        $point = 0;
        $ans = $_POST[strval($i+1)];
        $hid = explode('_',$vhid[$i]['hidden']);
        if(is_array($ans))
        {
            echo var_dump($ans);
            for($j=0; $j<count($ans);$j++)
            {
                if($ans[$j]==$hid[$j])
                    $point=1;
                else
                {
                    $point=0;
                    break;
                }
            }
        }
        else 
        {
            if($ans == $hid[0])
            {
                $point=1;
            }
        }
        $points += $point;
    }
    setcookie('completed', $db->insertGetId($points), time()+86400*30);
    unset($db);
    header('Location: thanks.php');
?>