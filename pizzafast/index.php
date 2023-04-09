<?php

session_start();
session_destroy();
require_once 'backend/connect.php';

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="style.css"/>
    <link rel="icon" href="images/icon2.png"/>
    <title>PizzaFast</title>
</head>
<body>
    <header>
        <nav>
            <div class="logo">
                <img src="images/logo3.svg" width="40"/>
                <p>PizzaFast</p>
            </div>
            <ul class="headerlinks">
                <li><a href="" class="links">Каталог</a></li>
                <li><a href="" class="links">Контакты</a></li>
                <li><a href="" class="links">О нас</a></li>
                <li class="btn"><a href="">Войти</a></li> <!-- Если сессия есть, в переменную положить фоточку профиля + переход на профиль, иначе - кнопка "Войти"-->
                <li class="btn"><a href="">Корзина</a></li> 
            </ul>
        </nav>
    </header>
    <div class="banner" id="banner">
        <div class="leftbanner">
            <h1>МОЖЕТ БЫТЬ, ПИЦЦУ?</h1>
            <h2 class="underh1">Самая вкусная пицца в Питере у нас - привезем, пока не остыла</h2>
            <p class="btn"><a href="#catalog">Хочу заказать</a></p>
        </div>
        <img src="images/bannerpic1.jpg" class="rightbanner">
    </div>
    <div class="carousel">
        <img class="carouselpic" src=images/deal1.png height="240" width="400">
        <img class="carouselpic" src=images/deal2.png height="240" width="400">
        <img class="carouselpic" src=images/deal3.png height="240" width="400">
    </div>
    <div class="catalog" id="catalog">
    <?php
      $pizza = "SELECT * FROM catalog";
      $pizzaquery = mysqli_query($conn, $pizza);
      if (mysqli_num_rows($pizzaquery) > 0) {
        while ($row = mysqli_fetch_array($pizzaquery)) {
          echo '
              <div class="card">
                <img class="cardpic" width="300" src="../pizza pictures/' . $row["picture"] . ' ">
                <h5 class="card-title"> ' . $row["name"] . ' </h5>
                    <p> ' . $row["ingredients"] . ' </p>
                    <div class="cardpricebtn">
                        <p> ' . $row["price"] . ' ₽</p>
                        <p class="btn"><a>В корзину</a></p>
                    </div>
              </div>';
        }
      }
      ?>
    </div>
    <div class="about">
        <img src="images/pizzapng.png" class = "pizzapng">
        <div class="abouttext">
            <h2>Почему мы?</h2>
            <p>Наша цель - создать сервис с самой вкусной и доступной пиццей, которую доставят прямо к вашей двери как можно скорее. Мы понимаем, что совсем не нужно быть в ресторане для того, чтобы отведать его блюда, поэтому хотим, чтобы каждый из наших клиентов мог обратиться к нам. Пока вы ждете свой заказ, вы можете собрать близких, создать уютную атмосферу, включить любимый сериал; а если захотите узнать, как скоро прибудет курьер, вы сможете отследить это прямо на сайте :)</p>
        </div>
    </div>
    <footer>
        <div class="fblock">
            <div class="fblocktitle">
                <p>Работа с нами</p>
            </div>
            <p>pizzafasthr@gmail.com</p>
            <p>8 (123) 456-78-90</p>
        </div>
        <div class="fblock">
            <div class="fblocktitle">
                <p>Горячая линия</p>
            </div>
            <p>8 (123) 098-76-54</p>
        </div>
        <div class="fblock">
            <p><a href="#banner">Вернуться вверх</a></p>
            <p><a href="">Перейти к корзине</a></p>
            <p><a href="">Личный кабинет</a></p>
        </div>
        <div class="fblock">
            <p>PizzaFast, 2023</p>
            <div class="ficons">
                <a href="https://www.vk.com/pizzafast"><img width="30" height="30" src="images/vkicon.svg"></a>
                <a href="https://www.vk.com/pizzafast"><img width="30" height="30" src="images/youtubeicon.png"></a>
                <a href="https://www.vk.com/pizzafast"><img width="30" height="30" src="images/instaicon.webp"></a>
            </div>
        </div>
    </footer>
</body>
</html>