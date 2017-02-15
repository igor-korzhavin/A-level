<?php
session_start();
require_once 'db.php';
require_once 'valid.php';
?>
<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="utf-8">  
		<title>Список записей</title>
		<link rel="stylesheet" href="bootstrap3/css/bootstrap.css">
		<link rel="stylesheet" href="styles.css">
	</head>
	<body>
    <?php if($_SESSION['logined']): ?>
    <?php endif; ?>
    <?php  if (!$_SESSION['logined']):?>
        <p class="error"><?=$error_login;?></p>
    <form action="" method="post" class="admin">
        <input type="text" name="name" placeholder="Введите имя">
        <input type="password" name="password" placeholder="Введите пароль" class="pass">
        <input name="sub" type="submit" value="Отправить">
    </form>
    <?php else: echo "Welcome " . $_SESSION['user']. " ! ";?>
        <a href='?exit' class="ex">Выход</a>
    <?php endif; ?>
		<div id="wrapper">
			<h1>Список записей</h1>
            <form method="GET">
            <input name =sort type =submit value =Первые>
                <input name =star type =submit value =Последние>
            </form>
            <?php
            for($i=0;$i<count($res_select);$i++):?>
			<div class="note">
				<p>
					<span class="date"><?=$res_select[$i]['create_time'];?></span>
					<a href="note.php?post_id=<?=$res_select[$i]['post_id']?>"><?=$res_select[$i]['author'];?></a>
				</p>
				<p>
					<?=$res_select[$i]['post_title'];?>
                <p class="date">Теги: <?=$res_select[$i]['tags'];?></p>
                </p>
                <?php if($_SESSION['logined']): ?>
				<p class="nav">
					<a href="index.php?page=<?=$res_select[$i]['post_id']?>&del=<?=$res_select[$i]['post_id']?>">удалить</a> |
					<a href="edit.php?post_id=<?=$res_select[$i]['post_id']?>">редактировать</a>
				</p>
                <?php endif;?>
			</div>
            <?php endfor;?>

            <?php if($_SESSION['logined']): ?>
			<div>
				<a href="add.php" class="btn btn-danger btn-block">Добавить запись</a>
			</div>
            <?php endif; ?>
		</div>

	</body>
</html>


			