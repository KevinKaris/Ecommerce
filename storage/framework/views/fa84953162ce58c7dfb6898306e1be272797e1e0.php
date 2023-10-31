<?php
    $footer_content = \Modules\FooterSetting\Entities\FooterContent::first();
?>
<?php if(url()->current() == url('/')): ?>
<div class="amaz_section section_spacing4">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section__title d-flex align-items-center gap-3 mb_20">
                    <h3 class="m-0 flex-fill"><?php echo e(app('general_setting')->footer_about_title); ?></h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="amaz_mazing_text">
                    <?php echo app('general_setting')->footer_about_description; ?>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>

<!-- FOOTER::START  -->
    <footer class="home_three_footer">
        <div class="main_footer_wrap">
            <div class="container">
                 <div class="row">
                    <div class="col-xl-3 col-lg-3 col-md-6 footer_links_50 ">
                        <div class="footer_widget" >
                            <ul class="footer_links">
                                <?php $__currentLoopData = $sectionWidgets->where('section','1'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php if(!isModuleActive('Lead') && $page->pageData->module == 'Lead'): ?>
                                        <?php continue; ?>
                                    <?php endif; ?>
                                    <li><a href="<?php echo e(url($page->pageData->slug)); ?>"><?php echo e($page->name); ?></a></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 footer_links_50 ">
                        <div class="footer_widget">
                            <ul class="footer_links">
                                <?php $__currentLoopData = $sectionWidgets->where('section','2'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php if(!isModuleActive('Lead') && $page->pageData->module == 'Lead'): ?>
                                        <?php continue; ?>
                                    <?php endif; ?>
                                    <li><a href="<?php echo e(url($page->pageData->slug)); ?>"><?php echo e($page->name); ?></a></li>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-xl-3 col-md-6">
                        <div class="footer_widget" >
                            
                            <div class="apps_boxs">
                                <?php if($footer_content->show_play_store): ?>
                                <a href="<?php echo e($footer_content->play_store); ?>" class="google_play_box d-flex align-items-center mb_10">
                                    <div class="icon">
                                        <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/amaz_icon/google_play.svg" alt="<?php echo e(__('amazy.Google Play')); ?>" title="<?php echo e(__('amazy.Google Play')); ?>">
                                    </div>
                                    <div class="google_play_text">
                                        <span><?php echo e(__('amazy.Get it on')); ?></span>
                                        <h4 class="text-nowrap"><?php echo e(__('amazy.Google Play')); ?></h4>
                                    </div>
                                </a>
                                <?php endif; ?>
                                <?php if($footer_content->show_app_store): ?>
                                <a href="<?php echo e($footer_content->app_store); ?>" class="google_play_box d-flex align-items-center">
                                    <div class="icon">
                                        <img src="<?php echo e(url('/')); ?>/public/frontend/amazy/img/amaz_icon/apple_icon.svg" alt="<?php echo e(__('amazy.Apple Store')); ?>"  title="<?php echo e(__('amazy.Apple Store')); ?>">
                                    </div>
                                    <div class="google_play_text">
                                        <span><?php echo e(__('amazy.Get it on')); ?></span>
                                        <h4 class="text-nowrap"><?php echo e(__('amazy.Apple Store')); ?></h4>
                                    </div>
                                </a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <?php
                        $subscribeContent = [];
                    ?>
                    <?php if (isset($component)) { $__componentOriginal6444297f0269c07e4e5035f4a74ea0c006b2f88b = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\SubscribeComponent::class, ['subscribeContent' => $subscribeContent]); ?>
<?php $component->withName('subscribe-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginal6444297f0269c07e4e5035f4a74ea0c006b2f88b)): ?>
<?php $component = $__componentOriginal6444297f0269c07e4e5035f4a74ea0c006b2f88b; ?>
<?php unset($__componentOriginal6444297f0269c07e4e5035f4a74ea0c006b2f88b); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
                </div>
            </div>
        </div>
        <div class="copyright_area p-0">
            <div class="container">
                <div class="footer_border m-0"></div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="copy_right_text d-flex align-items-center gap_20 flex-wrap justify-content-between">
                            <?php echo app('general_setting')->footer_copy_right; ?>
                            <div class="footer_list_links">
                                <?php $__currentLoopData = $sectionWidgets->where('section','3'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $page): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                    <?php if(!isModuleActive('Lead') && $page->pageData->module == 'Lead'): ?>
                                        <?php continue; ?>
                                    <?php endif; ?>
                                    <a href="<?php echo e(url($page->pageData->slug)); ?>"><?php echo e($page->name); ?></a>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <?php if($footer_content->show_play_store && $footer_content->payment_image): ?>
                    <div class="footer_border m-0"></div>
                    <div class="row">
                        <div class="col-12">
                            <div class="payment_imgs text-center ">
                                <img class="img-fluid" src="<?php echo e(showImage($footer_content->payment_image)); ?>" alt="<?php echo e(__('common.payment_method')); ?>" title="<?php echo e(__('common.payment_method')); ?>">
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </footer>
    <!-- FOOTER::END  -->
<?php echo $__env->make('frontend.amazy.auth.partials._login_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<div id="cart_data_show_div">
    <?php echo $__env->make('frontend.amazy.partials._cart_details_submenu', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div>
<div id="cart_success_modal_div">
    <?php echo $__env->make('frontend.amazy.partials._cart_success_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
</div>
<input type="hidden" id="login_check" value="<?php if(auth()->check()): ?> 1 <?php else: ?> 0 <?php endif; ?>">
<div class="add-product-to-cart-using-modal">
    
</div>

<?php echo $__env->make('frontend.amazy.partials._modals', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<!-- UP_ICON  -->
<div id="back-top" style="display: none;">
    <a title="<?php echo e(__('common.go_to_top')); ?>" href="#"><i class="ti-angle-up"></i></a>
</div>
<!--/ UP_ICON -->
<!-- facebook chat start -->
<?php
    $messanger_data = \Modules\GeneralSetting\Entities\FacebookMessage::first();
?>
<?php if($messanger_data->status == 1): ?>
    <?php echo $messanger_data->code; ?>
<?php endif; ?>
<!-- facebook chat end -->

<?php echo $__env->make('frontend.amazy.partials._script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->yieldPushContent('scripts'); ?>
<?php echo $__env->yieldPushContent('wallet_scripts'); ?>

</body>

</html><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/partials/_footer.blade.php ENDPATH**/ ?>