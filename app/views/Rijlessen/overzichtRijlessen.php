<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,700,1,200" />
    <link rel="stylesheet" href="<?= URLROOT; ?>/css/style.css">
    <title>Overzicht Rijlessen</title>
</head>
<body>
    <u><?= $data['title']; ?></u>
    <p>Aantal Rijlessen <?= $data['amount'] ?></p>

    <table>
        <thead>
            <th>Naam</th>
            <th>Mobiel</th>
            <th>Pakketnaam</th>
            <th>AantalLessen</th>
            <th>Prijs</th>
            <th>StartDatum</th>
            <th>DatumRijbewijsBehaald</th>
        </thead>
        <tbody>
            <?= $data['rows']; ?>
        </tbody>
    </table>
</body>
</html>



