<?php
class DBase
{
    private $db = null;
    private $config = null;

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
            $stmt = $this->db->query($qr);
            $arr = [];
            while($row = $stmt->fetch(PDO::FETCH_ASSOC))
            {
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
    

    public function insertGetId($e, $p)
    {
        try
        {
            $this->db->beginTransaction();
            $this->db->query("INSERT INTO cdata (ePoints, pPoints) VALUES ($e,$p)");
            $id = $this->db->lastInsertId();
            $this->db->commit();
            return $id;
        }
        catch(PDOException $e)
        {
            $this->db->rollBack();
            echo "Something went wrong with transaction & query!";
        }
    }
}

class DBM
{
     function generateQnA()
    {
        $db = new DBase;
        $qr = $db->query("SELECT * from `qa`");
        
        for($i=0; $i<count($qr); $i++)
        {
            echo '<p>'.$qr[$i]['content'].'</p>';
            echo '<div class="answers">';
            if($qr[$i]['type']==0)
                {$type="radio"; $xtra="";}
            else {$type="checkbox"; $xtra="[]";}

            $answers = explode('_',$qr[$i]['answers']);
            $values = explode('_',$qr[$i]['ansvalues']);    
            for($j=0; $j < count($answers); $j++)
            ## Tutaj trzeba dodać do każdego 'radio' 'required' (index.php już zmieniłem) Chyby wiem jak to zrobić, ale nie chcę namieszać,
            ## więc zostawię to Tobie. :)
            {
                echo '<input type="'.$type.'" name="'.$qr[$i]['id'].$xtra.'" id="'.$values[$j].$i.'" value="'.$values[$j].'"><label for="'.$values[$j].$i.'">'.$answers[$j].'</label>';
            }
            echo '</div>';
             
        }
        
        unset($db);
    }

}
?>