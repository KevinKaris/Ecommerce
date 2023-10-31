<table class="table Crm_table_active3">
    <thead>
    <tr>
        <th scope="col"><?php echo e(__('common.sl')); ?></th>
        <th scope="col"><?php echo e(__('common.name')); ?></th>
        <th scope="col"><?php echo e(__('common.rate')); ?> (%)</th>
        <th scope="col"><?php echo e(__('common.status')); ?></th>
        <th scope="col"><?php echo e(__('common.description')); ?></th>
        <th scope="col"><?php echo e(__('common.action')); ?></th>
    </tr>
    </thead>
    <tbody>
    <?php $__currentLoopData = $items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <tr>
            <th><?php echo e($key+1); ?></th>
            <td><?php echo e($item->name); ?></td>
            <td><?php echo e($item->rate); ?></td>
            <td><span class="<?php echo e($item->status == 1?'badge_1':'badge_2'); ?>"><?php echo e(showStatus($item->status)); ?></span></td>
            <td><?php echo e(Str::limit($item->description,25)); ?></td>
            <td>
                <?php if(permissionCheck('admin.seller_commission_edit')): ?>
                    <!-- shortby  -->
                    <div class="dropdown CRM_dropdown">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <?php echo e(__('common.select')); ?>

                        </button>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu2">
                             <a class="dropdown-item edit_item" data-value="<?php echo e($item->id); ?>" type="button"><?php echo e(__('common.edit')); ?></a>
                        </div>
                    </div>
                    <!-- shortby  -->
                <?php else: ?>
                    <button class="primary_btn_2" type="button">No permission</button>
                <?php endif; ?>
            </td>
        </tr>
    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

    </tbody>
</table>
<?php /**PATH C:\xampp\htdocs\pomalo\Modules/MultiVendor\Resources/views/seller_commission/item_list.blade.php ENDPATH**/ ?>