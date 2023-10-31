<?php if($products->stock_manage == 1): ?>
    <?php
        $stock = 0;
    ?>
    <?php $__currentLoopData = $products->skus; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sku): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php
            $stock += $sku->product_stock;
        ?>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php else: ?>
    <?php
        $stock = 'Not Manage';
    ?>
<?php endif; ?>

<?php echo e($stock); ?>

<?php if($products->unit_type_id != null): ?>
    (<?php echo e(@$products->unit_type->name); ?>)
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\pomalo\Modules/Product\Resources/views/products/components/_product_stock_td.blade.php ENDPATH**/ ?>