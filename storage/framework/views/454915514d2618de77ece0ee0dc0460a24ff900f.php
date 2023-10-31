<div class="col-lg-12 text-center mt_5 mb_25">
    <span></span>
</div>
<form action="<?php echo e(route('frontend.order_payment')); ?>" method="post" id="stripe_form" class="stripe_form d-none">
    <input type="hidden" name="method" value="Stripe">
    <input type="hidden" name="amount" value="<?php echo e($total_amount - $coupon_am); ?>">
    <button type="submit" id="stribe_submit_btn" class="btn_1 order_submit_btn"><?php echo e(__('defaultTheme.process_to_payment')); ?></button>
    <?php echo csrf_field(); ?>
    <?php
        if(app('general_setting')->seller_wise_payment && session()->has('seller_for_checkout')){
            $credential = getPaymentInfoViaSellerId(session()->get('seller_for_checkout'), 4);
        }else{
            $credential = getPaymentInfoViaSellerId(1, 4);
        }
    ?>
    <script
        src="https://checkout.stripe.com/checkout.js"
        class="stripe-button"
        data-key="<?php echo e(@$credential->perameter_1); ?>"
        data-name="Stripe Payment"
        data-image="<?php echo e(showImage(app('general_setting')->favicon)); ?>"
        data-locale="auto"
        data-currency="<?php echo e($currency_code); ?>">
    </script>
</form><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/partials/payments/stripe_payment.blade.php ENDPATH**/ ?>