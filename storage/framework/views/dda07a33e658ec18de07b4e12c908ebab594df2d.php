<table class="table" id="disabledProductTable">
    <thead>
    <tr>
        <th scope="col"><?php echo e(__('common.sl')); ?></th>
        <th scope="col"><?php echo e(__('common.name')); ?></th>
        <th scope="col"><?php echo e(__('common.product_type')); ?></th>
        <th scope="col"><?php echo e(__('product.brand')); ?></th>
        <th scope="col"><?php echo e(__('common.image')); ?></th>
        <?php if(!isModuleActive('MultiVendor')): ?>
        <th scope="col"><?php echo e(__('product.stock')); ?></th>
        <?php endif; ?>
        <th scope="col"><?php echo e(__('common.status')); ?></th>
        <th scope="col"><?php echo e(__('common.action')); ?></th>
    </tr>
    </thead>
    
</table>
<?php /**PATH C:\xampp\htdocs\pomalo\Modules/Product\Resources/views/products/disabled_product_list.blade.php ENDPATH**/ ?>