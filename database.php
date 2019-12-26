<?php
class DBase
{
    private $db = null;
    private $config = null;
    private $lastrows = 0;

    public function __construct()
    {
        $this->config = require_once 'dbconfig.php';
        try {
            $this->db = new PDO("mysql:host={$this->config['host']};dbname={$this->config['database']};port={$this->config['port']};charset=utf8",$this->config['user'], $this->config['password'], [
            PDO::ATTR_EMULATE_PREPARES => false,
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
            ]);
    
        } catch (PDOException $err) {
            exit('DB error'); 
        }
    } 
    public function query($qr){
        try
        {
            $this->lastrows = 0;
            $stmt = $this->db->query($qr);
            $arr = [];
            while($row = $stmt->fetch(PDO::FETCH_ASSOC))
            {
                $this->lastrows++;
                $arr[] = $row;
            }
            $stmt->closeCursor();
            unset($stmt);
            return $arr;
        }
        catch(PDOException $e)
        {
            echo "Something went wrong with query!";
        }
    }
    public function getRows()
    {
        return $this->lastrows;
    }
}

class DBM
{
    public static function generateQnA()
    {
        $db = new DBase;
        $qr = $db->query("SELECT * from `qa`");
        for($i=0; $i<$db->getRows(); $i++)
        {
            echo '<p>'.$qr[$i]['content'].'</p>';
            echo '<div class="answers">';
            if($qr[$i]['type']==0)
                $type="radio";
            else $type="checkbox";

            $answers = explode('_',$qr[$i]['answers']);
            $values = explode('_',$qr[$i]['ansvalues']);    
            for($j=0; $j < count($answers); $j++)
            {
                echo '<input type="'.$type.'" name="'.$qr[$i]['id'].'" id="'.$values[$j].$i.'" value="'.$values[$j].'"><label for="'.$values[$j].$i.'">'.$answers[$j].'</label>';
            }
            echo '</div>';
             
        }
        
        unset($db);
    }
}
?>