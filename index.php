<?php  if(isset($_COOKIE['completed'])) {header("Location: thanks.php"); exit();}
require_once 'database.php';
?>
<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Weź udział w ankiecie i zacznij żyć świadomiej!">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ankieta SŚM</title>
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Hind+Madurai:400,700&display=swap&subset=latin-ext" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div id="all">
    <header>
        <h2>Ankieta badająca wiedzę uczniów liceum o scenie politycznej oraz sytuacji ekonomicznej Polski.</h2>
        <p>Po uzupełnieniu ankiety otrzymasz pewnego rodzaju sprawozdanie, z którego będziesz mógł wyciągnąć wnioski we własnym zakresie. Twoje wyniki będą włącząne do ogólu, z którego będzie przygotowany raport udostępniony na tej stronie. Wtedy formułowaniem wniosków zajmiemy się my 😉.</p>
    </header>
    <main>
        <form action="verify.php" method="POST">
            <input type="hidden" name="posted" value="posted" />
            <?php DBM::generateQnA(); ?>
            <p>Serdecznie dziękujemy za udział!</p>
            <input type="submit" id="submit" value="Prześlij ankietę">
        </form>
    </main>
    <footer>
        <p>Ta ankieta została stworzona w ramach projektu „Stowarzyszenie Świadomej Młodzieży” realizowanego w pierwszej klasie 1 LO im Bartłomieja Nowodworskiego w Krakowie przez grupę uczniów klasy 1AG. </p>
        <p>Strona nie pobiera żadnych informacji osobistych umożliwiającyh zidentyfikowanie poszczególnych ankietowanych.</p>
    </footer>
    </div>
</body>
</html>
