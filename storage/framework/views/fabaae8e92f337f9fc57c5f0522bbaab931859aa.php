<script type="text/javascript">
    function confirm_modal(delete_url)
    {
        jQuery('#confirm-modal').modal('show', {backdrop: 'static'});
        document.getElementById('confirm_link').setAttribute('href' , delete_url);
    }
</script>

<div class="modal fade admin-query" id="confirm-modal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"><?php echo e(__('seller.alert_message')); ?></h4>
                <button type="button" class="close" data-dismiss="modal">
                    <i class="ti-close "></i>
                </button>
            </div>
            <div class="modal-body">
                <div class="text-center">
                    <h4><?php echo e(__('seller.are_you_confirmed_to_execute_this_operation')); ?></h4>
                </div>
                <div class="mt-40 d-flex justify-content-between">
                    <button type="button" class="primary-btn tr-bg" data-dismiss="modal"><?php echo app('translator')->get('common.cancel'); ?></button>
                    <a id="confirm_link" class="primary-btn fix-gr-bg"><?php echo e(__('seller.yes')); ?></a>
                </div>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\pomalo\Modules/MultiVendor\Resources/views/merchants/confirm_modal.blade.php ENDPATH**/ ?>