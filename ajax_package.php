<?php
include 'includes/db.php';
$output="";
if(isset($_GET['count']))
 {
	$count= $_GET['count'];
   
   
    $output .='<div class="col-md-12" id="row'.$count.'">
        <input type="hidden"  name="row[]" value="'.$count.'" id="total_fields">';
                                   $output .='
                                           <div class="col-md-3">
                                        
                                           <br>
                                        <select onchange="get_product('.$count.')" id="product'.$count.'" name="product_id[]" class="form-control" style="width:100%">
                                   <option value="0">Choose</option>';
                            
                          $run_items = mysqli_query($connection,"SELECT DISTINCT(product_id) FROM stock_items 
                                        LEFT join product on stock_items.product_id=product.id");
                           while ($row1=mysqli_fetch_array($run_items)) {
                                 $product_id=$row1['product_id']; 

                           
                            $items = mysqli_query($connection,"SELECT * FROM product WHERE id='$product_id'");
                            $row2=mysqli_fetch_array($items);

                                 $product_id=$row2['id']; 
                                 $product_title=$row2['title'];
                                 $output.='<option value="'.$product_id.'">'.$product_title.'</option>';


                            };
                            
                        $output .='</select></div>';                                       

        $output.='<div class="col-md-2">
             <br>
            <input type="text" name="price[]" id="price'.$count.'" class="form-control">
        </div>

        <div class="col-md-2">

            <br>
            <input type="number" name="quantity[]"   value="1"  id="quantity'.$count.'" class="form-control qty">
        </div>

        <div class="col-md-2">

            <br>
            <input type="text" name="total[]" id="total'.$count.'"  class="form-control">
        </div>
    <div class="col-xs-2">                             <button type="button" onclick="remove_item('.$count.')" class="btn btn_3d button-royal pull-right btn-icon  btn-round m-r-50">
                            <i class="icon fa fa-fw ti-minus" aria-hidden="true"></i></button>
       </div>

    </div>
</div>
<br>';	

echo $output;
	}
?>

 
