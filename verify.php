<?php
    if(!isset($_POST['posted'])){ header("Location: index.php"); exit(); }
    require_once 'database.php';
    $ePoints = 0;
    $pPoints = 0;
    $db = new DBase;
    $vhid = $db->query("SELECT `hidden` FROM qa");
    for($i=0; $i<count($vhid); $i++)
    {
        $points = 0;
        $ans = $_POST[strval($i+1)];
        $hid = explode('_',$vhid[$i]['hidden']);
        if(is_array($ans))
        {
            echo var_dump($ans);
            for($j=0; $j<count($ans);$j++)
            {
                $points += $hid[$ans[$j]];
            }
        }
        else $points = $hid[$ans];
        
        if($hid[0]=='e')
        {
            $ePoints += $points;
            echo "eko $ePoints";
        }
        elseif($hid[0]=='p')
        {
            $pPoints += $points;
            echo "poli $pPoints";
        }
    }
    setcookie('completed', $db->insertGetId($ePoints,$pPoints), time()+86400*30);
    unset($db);
    header('Location: thanks.php');
?>