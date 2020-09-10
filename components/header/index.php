
<header>
    <div class="header wrapper">
        <div class ="header_section">
            <div class="header_item header_logo">
                <img src = "img/icons/logo.jpg">
            </div>
    
            <div class ="header_item headerButton">
                <a class="<?if(isset($_GET['category_id']) && $_GET['category_id'] == 1){?> is-bold  <?}?>"  href="catalog.php?category_id=1">Женщинам</a>
            </div>
            <div class ="header_item headerButton"> 
                <a class="<?if(isset($_GET['category_id']) && $_GET['category_id'] == 2){?> is-bold  <?}?>"  href="catalog.php?category_id=2">Мужчинам</a>
            </div>
            <div class ="header_item headerButton" >
                <a class="<?if(isset($_GET['category_id']) && $_GET['category_id'] == 3){?> is-bold  <?}?>"  href="catalog.php?category_id=3">Детям</a>
            </div>
            <div class ="header_item headerButton" >
                <a href="#">Новинки</a>
            </div>
            <div class ="header_item headerButton">
                <a href="#">О нас</a>
            </div>
        </div>
        <div class = "header_section">
            <div class  ="header_item headerButton">
                <img src = "img/icons/account.png"></img>
                <a href="auth/inex.php" class="link">Войти</a>
            </div>
            <div class = "header_item headerButton">
                <img src = "img/icons/bascet.png"></img>
                <a href="#bascet.php" class="link">Корзина(0)</a>
            </div>
        </div>   
    </div>
</header>
