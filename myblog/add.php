<?php
require_once 'db.php';
?>
<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="utf-8">  
		<title>Новая запись</title>
		<link rel="stylesheet" href="bootstrap3/css/bootstrap.css">
		<link rel="stylesheet" href="styles.css">
	</head>
	<body>
		<div id="wrapper">
			<h1>Новая запись</h1>
			<p class="nav">
				<a href="index.php">на главную</a>
			</p>
			<!-- 
			
				После сохранения перебрасывает 
				на список записей
				с помощью header location
			
			-->
			<div>
				<form action="" method="POST">
					<p><input name="author" class="form-control" placeholder="Название записи"></p>
					<p><textarea name="post_title" placeholder="Краткое содержание статьи" class="form-control name="" id="" cols="30" rows="10"></textarea></p>
					<p><textarea name="post_text" class="form-control" placeholder="Текст записи"></textarea></p>
                    <p><input name="tags_add" class="form-control" placeholder="Теги"></input></p>
					<p><input type="submit" class="btn btn-danger btn-block" value="Сохранить"></p>
				</form>
			</div>
			
		</div>

	</body>
</html>


			