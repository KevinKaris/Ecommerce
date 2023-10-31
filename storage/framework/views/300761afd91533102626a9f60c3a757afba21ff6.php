<form action="<?php echo e(route('frontend.order_payment')); ?>" method="post" class="paypal_form_payment_23 d-none">
    <?php echo csrf_field(); ?>
    <input type="hidden" name="method" value="Paypal">
    <input type="hidden" name="purpose" value="order_payment">
    <input type="hidden" name="amount" value="<?php echo e($total_amount - $coupon_am); ?>">

    <button type="submit" class="btn_1 order_submit_btn paypal_btn d-none"><?php echo e(__('defaultTheme.process_to_payment')); ?></button>
</form><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/partials/payments/payment_paypal.blade.php ENDPATH**/ ?>