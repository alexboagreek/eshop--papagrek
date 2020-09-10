
<link rel="stylesheet" href="css/style.css">

<?php

// подключение к БД

include_once($_SERVER['DOCUMENT_ROOT'].'/eshop/system/classes/autoload.php'); 
include_once($_SERVER['DOCUMENT_ROOT'].'/eshop/config.php');

// создаем новый экземпляр класса

$good = new \Nordic\Core\Good($_GET['id']);  //прикручиваем id для отображения разного товара в карточке товара

?>
<?php


    $category = new \Nordic\Core\Category($good->getField('category_id'));
    $cat_name = $category->getField('title');

    $type = new \Nordic\Core\Type($good->getField('type_id'));
    $type_name = $type->getField('title');

?>


<div class="breadcrumbs flex-box">
    <div>

        <a href="main.php">
            Главная
        </a>
        /

    </div>
    <div>
        <a href="catalog.php?category_id=<?=$good->getField('category_id')?>">  <!-- предустановленная ссылка на нахождение товара-->
            <?=$cat_name?>
        </a>
        /
    </div>
    <div>
        <a href="catalog.php?category_id=<?=$good->getField('category_id')?>&type=<?=$good->getField('type_id')?>">  <!-- предустановленная ссылка на нахождение товара-->
            <?=$type_name?>
        </a>
        /
    </div>
    <div>
        <?=$good->title() ?>
    </div>

</div>


<div class="item wrapper">
    <div class="item-photo">
        <img src="<?=$good->photo() ?>" /> 
    </div>
    <div> 
        <b>
            <?= $good->title() ?> 
        </b> 
    </div>
    <div>
        <?= $good->getField('articul')?>
    </div>
    <div>
        <?= $good->price() ?> руб.   
    </div>
    <div>
        <?= $good->getField('description')?>
    </div>
</div>
