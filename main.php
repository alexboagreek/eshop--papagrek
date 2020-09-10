
<link rel="stylesheet" href="css/style.css">  

<?php   

include_once($_SERVER['DOCUMENT_ROOT'].'/eshop/system/classes/Nordic/Core/Connect.php');

include_once($_SERVER['DOCUMENT_ROOT'].'/eshop/config.php'); 

include_once($_SERVER['DOCUMENT_ROOT'].'/eshop/system/classes/autoload.php');

include($_SERVER['DOCUMENT_ROOT'].'/eshop/components/header/index.php'); 

$result = (new \Nordic\Core\Article())->getElements();  
$connect = new \Nordic\Core\Connect();
?> 

<div class = "intro wrapper">
    <h1 class = "intro">НОВЫЕ ПОСТУПЛЕНИЯ ВЕСНЫ</h1>
    <p><i>Мы подготовили для Вас лучшие новинки сезона</i></p>
    
    <div class = "button wrapper">
        <a href="#" class="">Посмотреть новинки</a>
    </div>  

</div>

<div class="promo wrapper">
    <? while($row = mysqli_fetch_assoc($result)){ ?>
        <? $article = new \Nordic\Core\Article($row['id']); ?>  
        <div class="article" style="background-image: url('<?= $article->getField('photo') ?>')">
            <div>
                <div> 
                    <b>
                        <?= $article->title() ?> 
                    </b> 
                </div>
                <div>
                    <?= $article->getField('description') ?>      
                </div>
            </div>
        </div>
    <?}?>
</div>
<div class="form-direction wrapper">
    <h2>БУДЬ ВСЕГДА В КУРСЕ ВЫГОДНЫХ ПРЕДЛОЖЕНИЙ</h2>
    <p><i>подписывайся и следи за новинками и выгодными предложениями</i></p>
    <div class = "form flex-box">
        <form method="GET" action="form.php" autocomplete="off">
            <div class ="flex-box form">
                <div class="form-item">
                    <input type="email" placeholder="e-mail" > 
                </div>
                <div class="form-item">
                    <input type="submit" value="записаться">
                </div>
            </div>
        </form>
    </div>
</div>


<?require_once('components/footer/index.php');?>

<script src="js/script.js"></script> 
