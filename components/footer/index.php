<footer>
    <div class ="wrapper flex-box flex-between">
        
        <div class="">
            <div><h4>КОЛЛЕКЦИИ<h4></div>

            <?php 
            $categories = mysqli_query($connect->getConnection(),"SELECT * FROM categories ");
            while ($category = mysqli_fetch_assoc($categories)){
                $count = mysqli_query($connect->getConnection(),"SELECT COUNT(*) as num FROM core_goods WHERE category_id=".$category['id']);
                $info = mysqli_fetch_assoc($count);
                              
           
                ?>
                
                <div class ="">
                    <a href="catalog.php?category_id=<?=$category['id']?>">
                        <?=$category['title']?> (<?=$info['num']?>)
                    </a>  
                </div>

            <?}?> 
        
            <?php
            $count = mysqli_query($connect->getConnection(),"SELECT COUNT(*) as num FROM core_goods WHERE is_new=1");
            $info = mysqli_fetch_assoc($count);
            ?>
            <div> <a href= "catalog.php?is_new=1"> Новинки (<?=$info['num']?>)</a> </div>
    
        </div>
           
        <div class="">
            <div>
                <h4>МАГАЗИН<h4>
            </div>
            <div class ="">
                <a href="#">О нас</a>
            </div>
            <div>
                <a href="#">Доставка</a>
            </div>
            <div>
                <a href="#">Работай с нами</a>
            </div>
            <div>
                <a href="#">Контакты</a>
            </div>
        </div>
        <div class="">
            <div>
                <h4>МЫ В СОЦИАЛЬНЫХ СЕТЯХ<h4>
            </div>
            <div>
                <p>© 2020 Copyright. Все права защищены</p>
            </div>
            <div class ="copyright-footer-item ">
                <p>Designed by Nordic IT School</p>
            </div>
            
            <div class="flex-box">
                <div>
                    <img class="size" src="img/icons/instagram.png">
                </div> 
                <div>    
                    <img class="size" src="img/icons/facebook.png">
                </div>
                <div> 
                    <img class="size" src="img/icons//vk.png">
                </div>
            </div>   
        <div>
    </div>

</footer>
