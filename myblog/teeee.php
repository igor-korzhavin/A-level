<?

function comment($row){ ?>

        <div style="margin-left: 30px">

	        <div id="<?=$row['comment_id']?>" class="date"><?=$row['comment_username'] . " " . $row['comment_datetime'] ?></div>

	        <div class="text"><?=$row['comment_text']?></div>

	        <a href="#<?=$row['comment_parent_id']?>" class="glyphicon glyphicon-bell"></a>

	        <a href="?id=<?=$_GET['id']?>&comment=<?=$row['comment_id']?>#answer">Ответить</a>

        <?php if ($_SESSION['logined']) { ?>

    	    | <a href='?id=<?=$_GET['id']?>&comment_del=<?=$row['comment_id']?>'>Удалить</a> 

    	    | <a href='?id=<?=$_GET['id']?>&comment_edit=<?=$row['comment_id']?>#answer'>Edit</a> 

        <?php }

