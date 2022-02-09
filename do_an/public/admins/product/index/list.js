function actionDelete (event){
    event.preventDefault();
    let urlRequest = $(this).data('url');
    let that = $(this);
    Swal.fire({
        title: 'Bạn có chắc chắn xoá sản phẩm này không ?',

        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Chắc chắn'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
               type: 'GET',
               url: urlRequest,
               success: function (data){
                   if(data.code == 200) {
                        that.parent().parent().remove();
                       Swal.fire(
                           'Xoá thành công !'


                       )
                   }

               },
                error: function (){

                }
            });

        }
    })
}

$(function (){
   $(document).on('click', '.action_delete', actionDelete);
});
