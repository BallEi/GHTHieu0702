<?php 
    include "header.php" ;
    include "slider.php" ;
    include "class/category_class.php";
    
?>
<?php 
    $cartegory = new cartegory ;
    $show_cartegory = $cartegory -> show_cartegory() ;
    
    //  var_dump($category_name)
?>

<div class="admin-content-right">
            <div class="admin-content-right-category-list">
                <h1>Danh sách danh mục</h1>
                <table>
                    <tr>
                        <th>STT</th>
                        <th>ID</th>
                        <th>Danh mục</th>
                        <th>Tuỳ biến</th>
                    </tr>
                    <?php 
                    if($show_cartegory) { $i=0;
                        while( $result = $show_cartegory->fetch_assoc()){
                                        $i++;
                  
                    ?>
                    <tr>
                        <td><?php echo $i ?></td>
                        <td><?php echo $result['category_id'] ?></td>
                        <td><?php echo $result['category_name'] ?></td>
                        <td><a href="cartegoriedit.php?category_id=<?php echo $result['category_id'] ?>">Sửa</a>| <a href="cartegoridelete.php?category_id=<?php echo $result['category_id'] ?>">Xoá</a></td>
                    </tr>
                    <?php 
                          }
                        }
                    ?>
                </table>
            </div>
            </div>
</section>
</body>
</html>