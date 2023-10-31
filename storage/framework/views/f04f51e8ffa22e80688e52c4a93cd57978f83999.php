

<?php $__env->startSection('styles'); ?>
    <style>
        .cursor_pointer{
            cursor: pointer!important;
        }
    </style>
<?php $__env->stopSection(); ?>

<?php $__env->startSection('content'); ?>
<section class="pricing_part section_padding bg-white">
    <div class="container">
        <div class="row justify-content-center text-center">
            <div class="col-lg-6 col-md-10 mb_50">
                <div class="section__title">
                    <h3 class="mb_40"><?php echo e($content->pricingTitle); ?></h3>
                    <?php echo $content->pricingDescription; ?>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="price_truggle d-flex">
                    <p><?php echo e(__('defaultTheme.monthly')); ?></p>
                    <label class="switch-toggle outer">
                        <input id="pricingToggle" type="checkbox" />
                        <div></div>
                    </label>
                    <p class="pl-18"><?php echo e(__('defaultTheme.yearly')); ?></p>
                </div>
            </div>

            <?php $__currentLoopData = $pricing_plans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <div class="col-lg-4 col-md-6">
                <div class="single_pricing_part <?php echo e($item->is_featured?'product_tricker':''); ?>">
                    <?php if($item->is_featured == 1): ?><span
                        class="product_tricker_text"><?php echo e(__('defaultTheme.best value')); ?></span> <?php endif; ?>
                    <div class="pricing_header">
                        <h5><?php echo e($item->name); ?></h5>
                        <div class="monthly_price_div">
                            <h2><?php echo e(single_price($item->monthly_cost)); ?></h2>
                            <p><?php echo e(__('defaultTheme.per month')); ?></p>
                        </div>
                        <div class="yearly_price_div d-none">
                            <h2><?php echo e(single_price($item->yearly_cost)); ?></h2>
                            <p><?php echo e(__('defaultTheme.per year')); ?></p>
                        </div>
                    </div>
                    <ul>
                        <li>
                            <?php echo e(__('defaultTheme.team_member')); ?>

                            : <?php echo e($item->team_size); ?></li>
                        <li><?php echo e(__('defaultTheme.products')); ?> : <?php echo e($item->stock_limit); ?></li>
                        <li><?php echo e(__('defaultTheme.transaction charge')); ?> : <?php echo e($item->transaction_fee); ?> % </li>
                    </ul>
                    <a class="amaz_primary_btn3 mb_20 text-center justify-content-center cursor_pointer select_btn_price" data-id='<?php echo e($item->id); ?>'><?php echo e(__('defaultTheme.choose plan')); ?></a>
                </div>
            </div>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            <form class="price_subscription_add d-none"
                action="<?php echo e(route('frontend.merchant-register-subscription-type')); ?>" method="get">

                <input type="hidden" id="id" name="id" value="">
                <input type="hidden" id="type" name="type" value="">
            </form>
        </div>
    </div>
</section>

<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
<script>
    (function($){
        "use strict";
        $(document).ready(function(){
            $('#pricingToggle').on('change', function(){
                this.value = this.checked ? 1 : 0;
                if(this.value == 1){
                    $('#type').val('yearly');
                    $('.monthly_price_div').addClass('d-none');
                    $('.yearly_price_div').removeClass('d-none');
                }
                if(this.value == 0){
                    $('#type').val('monthly');
                    $('.yearly_price_div').addClass('d-none');
                    $('.monthly_price_div').removeClass('d-none');
                }
            });
            $(document).on('click','.select_btn_price', function(){
                event.preventDefault();
                $('#id').val($(this).attr("data-id"));
                $('.price_subscription_add').submit();
            });
        });
    })(jQuery);
</script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('frontend.amazy.auth.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/pages/merchant_create_by_subscription.blade.php ENDPATH**/ ?>