
<?php $__env->startSection('mainContent'); ?>
    <section class="admin-visitor-area up_st_admin_visitor">
        <div class="container-fluid p-0">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <div class="edit_div">
                        <?php echo $__env->make('multivendor::seller_commission.edit', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="box_header common_table_header">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('common.seller_commission')); ?></h3>
                        </div>
                    </div>
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table ">
                            <!-- table-responsive -->
                            <div class="">
                                <div id="item_list">
                                    <?php echo $__env->make('multivendor::seller_commission.item_list', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <input type="hidden" name="app_base_url" id="app_base_url" value="<?php echo e(URL::to('/')); ?>">
    <div class="show_div">

    </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('multivendor::seller_commission.scripts', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\Modules/MultiVendor\Resources/views/seller_commission/index.blade.php ENDPATH**/ ?>