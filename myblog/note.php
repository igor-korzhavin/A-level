<?php
session_start();
require_once 'db.php';
?>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>Моя заметка № <?= $_GET['post_id']; ?> </title>
    <link rel="stylesheet" href="bootstrap3/css/bootstrap.css">
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div id="wrapper">
    <?php for ($i = 0;
    $i < count($res_select_update);
    $i++): ?>
    <h1><?= $res_select_update[$i]['author'] ?></h1>
    <div>
        <p class="nav right">
            <a href="index.php">на главную</a>
        </p>
        <p class="date"><?= $res_select_update[$i]['create_time'] ?></p>
        <p>
            <?= $res_select_update[$i]['post_text']; ?>
            <br/><br/>
            <!--                 <form method="post">-->
            <!--                <p>-->
            <!--                    <input type="text" name="comment_username" placeholder="Ведите имя" > <br>-->
            <!--                    <textarea rows="10" cols="45" name="comment_text" placeholder="Введите комментарий"></textarea>-->
            <!--                    <input type="submit" name="save_comment" class="btn btn-danger btn-block">-->
            <!---->
            <!--                </p>-->
            <!---->
            <!--                </form>-->
            <?php endfor; ?>
        <h2>Комментарии </h2>

        <a href='?post_id=<?= $_GET['post_id'] ?>&comment=mine'>Оставить комментарий</a>


        <?
        $getid = $_GET['post_id'];
        if (!empty($getid)) {
            $res_row = $link->query("SELECT * FROM comment WHERE post_id=$getid ");
            while ($row = $res_row->fetch(PDO::FETCH_ASSOC)) {

                echo "<div class=\"date\" id=" . $row['comment_id'] . ">" . $row['comment_username'] . " " . $row['comment_datetime'] . "<a href=#" . $row['comment_parent_id'] . " class=\"glyphicon glyphicon-star\"></a>" . "</div>";
                echo "<div class=\"text\">" . $row['comment_text'] . "</div>";
                echo "<a href='?post_id=" . $_GET['post_id'] . "&comment=" . $row['comment_id'] . "'>Ответить</a> ";


                if ($_SESSION['logined']) {
                    echo "<a href='?post_id=" . $_GET['post_id'] . "&commentedit=" . $row['comment_id'] . "'>Изменить</a> ";
                    echo "<a href='?post_id=" . $_GET['post_id'] . "&commentdel=" . $row['comment_id'] . "'>Удалить</a> ";
                }
            }

        }

        ?>
        <?php if (!empty($_GET['comment'])) {
            ?>
            <form method="POST">

                <p>
                    <input name="comment_name" placeholder="ваше имя" class="form-control">
                </p>
                <p>
                    <textarea placeholder="  ваш коментарий" name="comment_text" cols="77" rows="5"></textarea>
                </p>
                <p>
                    <input name="save_comment" type="submit" class="btn btn-danger btn-block" value="Отправить">
                </p>
            </form>
        <?php } ?>
        <?php
        If (!empty($_GET['commentedit'])) {
            for ($i = 0; $i < count($res_edit_com); $i++):?>
                <form method="POST">
                    <p>
                        <input name="comment_name" placeholder="ваше имя" class="form-control"
                               value="<?= $res_edit_com[$i]['comment_username'] ?>">
                    </p>
                    <p>
                        <textarea name="comment_text" cols="77"
                                  rows="5"><?= $res_edit_com[$i]['comment_text'] ?></textarea>
                    </p>
                    <p>
                        <input name="save_edit_com" type="submit" class="btn btn-danger btn-block" value="Отправить">
                    </p>

                </form>


            <? endfor;
        } ?>


    </div>
</div>

</body>
</html>


			