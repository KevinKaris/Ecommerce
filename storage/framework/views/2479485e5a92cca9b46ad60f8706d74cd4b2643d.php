
<div class="amaz_cta_box <?php echo e($ads->status == 0?'d-none':''); ?> p-0 m-0">
    <div class="row justify-content-center p-0 m-0">
        <a href="<?php echo e(@$ads->description); ?>" class="col-xl-12 random_ads_div p-0 m-0">
            <img class="img-fluid" src="<?php echo e(showImage(@$ads->image)); ?>" alt="<?php echo e(@$ads->description); ?>" title="<?php echo e(@$ads->description); ?>">
        </a>
    </div>
</div>
        <?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/components/random-ads-component.blade.php ENDPATH**/ ?>