

function renderGoods(){  

    //создаем новый экземпляр класса для запросов
    let xhr = new XMLHttpRequest();

    let url = 'http://localhost/eshop/system/controllers/goods/catalog/index.php';
    let str_get = window.location.search;
    url = url + str_get;

    //запустили метод open() для установки параметров запроса
    xhr.open('GET',url,true);
    //естапновили заголовки запроса
    xhr.setRequestHeader('Content-type','application/x-form-urlencode');  

    //как только запрос вернется
    xhr.onreadystatechange = function(){
        //и они будет хорошие
        if(xhr.readyState == 4 && xhr.status == 200){
            //делаем то что нам надо с ответом
            document.getElementById('catalog').innerHTML = xhr.responseText;
        }
    }

    xhr.send(null);

}

document.getElementById('catalog').innerHTML = '<img src="img/icons/BPB.gif"/>';

setTimeout(function(){
    renderGoods();  
},1000);
 