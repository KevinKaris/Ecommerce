<?php if($order->is_confirmed == 1): ?>
    <h6><span class="badge_1"><?php echo e(__('common.confirmed')); ?></span></h6>
<?php elseif($order->is_confirmed == 2): ?>
    <h6><span class="badge_4"><?php echo e(__('common.declined')); ?></span></h6>
<?php else: ?>
    <h6><span class="badge_4"><?php echo e(__('common.pending')); ?></span></h6>
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\pomalo\Modules/OrderManage\Resources/views/order_manage/components/_order_status_td.blade.php ENDPATH**/ ?>