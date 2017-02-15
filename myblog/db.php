<?php
try {
    $link = new PDO('mysql:host=localhost;dbname=myblog', 'Igor', '1');
} catch (PDOException $e) {
    print "Error!: " . $e->getMessage() . "<br/>";
    die();
}
$select = $link->query("SELECT post.* , group_concat(tag.tag_title) as tags FROM post LEFT JOIN post_to_tag USING (post_id) LEFT JOIN tag USING (tag_id) group by post.post_id DESC");
$res_select = $select->fetchAll(PDO::FETCH_ASSOC);

if(!empty($_GET[star])){
    $select = $link->query("SELECT post.* , group_concat(tag.tag_title) as tags FROM post LEFT JOIN post_to_tag USING (post_id) LEFT JOIN tag USING (tag_id) group by post.post_id DESC");
    $res_select = $select->fetchAll(PDO::FETCH_ASSOC);
}

if(!empty($_GET[sort])){
    $select = $link->query("SELECT post.* , group_concat(tag.tag_title) as tags FROM post LEFT JOIN post_to_tag USING (post_id) LEFT JOIN tag USING (tag_id) group by post.post_id ");
    $res_select = $select->fetchAll(PDO::FETCH_ASSOC);
}


if(!empty($_POST['author'])and !empty($_POST['post_title'])){
    if(!empty($_POST['post_text'])){
        $insert = $link ->query("INSERT INTO post SET author = '{$_POST['author']}',post_title = '{$_POST['post_title']}',post_text='{$_POST['post_text']}',create_time = NOW()");
        header("Location:index.php");
    }
}

if($_GET['post_id']){
    $select_update = $link->query("SELECT * FROM post WHERE post_id=". $_GET['post_id']);
    $res_select_update = $select_update ->fetchAll(PDO::FETCH_ASSOC);
}
if($_POST['save']) {
    $update = $link->query("UPDATE post SET author='{$_POST['author_edit']}',post_title = '{$_POST['up_min_article']}',post_text = '{$_POST['full_edit']}',create_time='{$_POST['time_edit']}',update_time=NOW() WHERE post_id=" . $_GET['post_id']);
    if (!$update) {
        echo "PDO::errorInfo():";
        print_r($link->errorInfo());
        echo("<body><div><h3>Please enter the correct data!</div></body>");
    } else $sample = $update->fetchAll();
    //echo "UPDATE post SET author = '{$_POST['author_edit']}',post_text = '{$_POST['full_edit']}',create_time={$_POST['time_edit']},update_time=NOW() WHERE id=".$_GET['id'];
header("Location:index.php");
}
if($_GET['del']) {
    $delete = $link->query("DELETE FROM post WHERE post_id=" . $_GET['del']);
    header("Location:index.php");
}
if ($_POST['save_comment']) {
    if ($_GET['comment'] == "mine") {
        $add_com = $link->query("INSERT INTO comment SET comment_text = '{$_POST['comment_text']}',comment_username = '{$_POST['comment_name']}',post_id ='{$_GET['post_id']}'");
    } else { $add_com = $link->query("INSERT INTO comment SET comment_text = '{$_POST['comment_text']}',comment_username = '{$_POST['comment_name']}',post_id ='{$_GET['post_id']}', comment_parent_id ={$_GET['comment']} ");
    }
}

If ($_GET['commentdel']){
    $del_com = $link->query("DELETE FROM comment WHERE comment_id = '{$_GET['commentdel']}'");
}

if ($_GET['commentedit']){
    $edit_com= $link->query("SELECT * from comment WHERE comment_id = '{$_GET['commentedit']}'");
    $res_edit_com=$edit_com->fetchAll(PDO::FETCH_ASSOC);
}

If($_POST['save_edit_com']){
   $save_edit_com = $link -> query("UPDATE comment SET comment_username ='{$_POST['comment_name']}', comment_text = '{$_POST['comment_text']}' where comment_id = '{$_GET['commentedit']}'");
}
