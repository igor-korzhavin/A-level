<?php
require_once 'db.php';
?>
<!DOCTYPE html>
<html lang="ru">
	<head>
		<meta charset="utf-8">  
		<title>Редактировать запись</title>
		<link rel="stylesheet" href="bootstrap3/css/bootstrap.css">
		<link rel="stylesheet" href="styles.css">
	</head>
	<body>
		<div id="wrapper">
			<h1>Редактировать запись</h1>
			<p class="nav">
				<a href="index.php">на главную</a>
			</p>

			<div>
                <?php for($i=0;$i<count($res_select_update);$i++):?>
				<form action="" method="POST">
					<p><input name="time_edit" value="<?=$res_select_update[$i]['create_time']?>" class="form-control" ></p>
					<p><input name="author_edit" class="form-control" value="<?=$res_select_update[$i]['author']?>"></p>
					<p>
                        <textarea placeholder="краткое содержание" class="form-control" name="up_min_article"><?=$res_select_update[$i]['post_title']?></textarea>
					<textarea name="full_edit" class="form-control"><?=$res_select_update[$i]['post_text']?>
		        	</textarea>
					</p>
					<p><input name="save" type="submit" class="btn btn-danger btn-block" value="Сохранить"></p>
				</form>
                <?php endfor;?>
			</div>
			
		</div>

	</body>
</html>


			