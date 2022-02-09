<?php 
    include "header.php" ;
    include "slider.php" ;
    include "class/category_class.php";
?>
<?php
    $cartegory = new cartegory ;
    if(!isset($_GET['category_id']) || $_GET['category_id']== NULL){
        echo "<script>window.location = 'cartegorylist.php'</script>";
    }
    else {
        $cartegory_id = $_GET['category_id'];
    }
    $get_cartegory = $cartegory -> get_cartegory($cartegory_id) ;
    if($cartegory_id) {
        $result = $cartegory_id -> fetch_assoc();
    }
?>

<?php 
    $cartegory = new cartegory ;
    if($_SERVER['REQUEST_METHOD']=== 'post'){
        $category_name = $_POST['category_name'] ;
        $insert_category = $cartegory -> insert_category($category_name);
    }
    //  var_dump($category_name)
?>
<div class="admin-content-right">
            <div class="admin-content-right-category-add">
                <h1>Thêm danh mục</h1>
                <form action="" method="post">
                    <input name="category_name" type="text" placeholder="Nhập tên danh mục">
                    <button type="submit"> Thêm </button>
                </form>
            </div>
        </div>
</section>
</body>
</html>