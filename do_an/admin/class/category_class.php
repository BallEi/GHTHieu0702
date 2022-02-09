<?php
    include "database.php" ;
    
?>

<?php

    class cartegory {
        private $db;
        public function __construct () {
            $this -> db = new Database() ;

        }
        public function insert_category($cartegory_name) {
            $query = "INSERT INTO tbl_category (category_name) VALUES('$category_name')";
            $result = $this ->db->insert($query);
            return $result ;
        }
        public function show_cartegory(){
            $query = " SELECT * FROM tbl_category ORDER BY category_id DESC";
            $result = $this ->db->select($query);
            return $result ;
        }
        public function  get_cartegory($cartegory_id) {
            $query = " SELECT * FROM tbl_category WHERE category_id ='$category_id' ";
            $result = $this ->db->select($query);
            return $result ;
        }
    }

?>