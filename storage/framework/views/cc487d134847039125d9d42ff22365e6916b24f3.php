<div class="modal fade admin-query" id="create_attribute_modal">
    <div class="modal-dialog modal_1000px modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title"><?php echo e(__('product.create_attribute')); ?></h4>
                <button type="button" class="close " data-dismiss="modal">
                    <i class="ti-close "></i>
                </button>
            </div>
            <?php if(isModuleActive('FrontendMultiLang')): ?>
            <?php
            $LanguageList = getLanguageList();
            ?>
            <?php endif; ?>
            <div class="modal-body">
                <form action="" method="POST" enctype="multipart/form-data" id="create_attribute_form">
                    <div class="row">
                        <input type="hidden" name="form_type" value="modal_form">
                        <div class="white_box_50px box_shadow_white mb-20">
                            <input type="hidden" class="edit_id">
                            <div class="row">
                                <?php if(isModuleActive('FrontendMultiLang')): ?>
                                <div class="col-lg-12">
                                    <ul class="nav nav-tabs justify-content-start mt-sm-md-20 mb-30 grid_gap_5" role="tablist">
                                        <?php $__currentLoopData = $LanguageList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <li class="nav-item">
                                                <a class="nav-link anchore_color <?php if(auth()->user()->lang_code == $language->code): ?> active <?php endif; ?>" href="#aelement<?php echo e($language->code); ?>" role="tab" data-toggle="tab" aria-selected="<?php if(auth()->user()->lang_code == $language->code): ?> true <?php else: ?> false <?php endif; ?>"><?php echo e($language->native); ?> </a>
                                            </li>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </ul>
                                    <div class="tab-content">
                                        <?php $__currentLoopData = $LanguageList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                            <div role="tabpanel" class="tab-pane fade <?php if(auth()->user()->lang_code == $language->code): ?> show active <?php endif; ?>" id="aelement<?php echo e($language->code); ?>">
                                                <div class="col-lg-12">
                                                    <div class="primary_input mb-15">
                                                        <label class="primary_input_label" for=""> <?php echo e(__("common.name")); ?> <span class="text-danger">*</span></label>
                                                        <input class="primary_input_field" name="name[<?php echo e($language->code); ?>]" id="name" placeholder="<?php echo e(__("common.name")); ?>" type="text" value="<?php echo e(old('name')); ?>">
                                                        <span class="text-danger" id="name_error"></span>
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="primary_input mb-15">
                                                        <label class="primary_input_label" for=""> <?php echo e(__("common.description")); ?> </label>
                                                        <textarea class="primary_textarea height_112" placeholder="<?php echo e(__('common.description')); ?>" name="description[<?php echo e($language->code); ?>]" spellcheck="false"></textarea>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </div>
                                </div>
                            <?php else: ?>
                                <div class="col-lg-12">
                                    <div class="primary_input mb-15">
                                        <label class="primary_input_label" for=""> <?php echo e(__("common.name")); ?> <span class="text-danger">*</span></label>
                                        <input class="primary_input_field" name="name" id="name" placeholder="<?php echo e(__("common.name")); ?>" type="text" value="<?php echo e(old('name')); ?>">
                                        <span class="text-danger" id="error_attribute_name"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="primary_input mb-15">
                                        <label class="primary_input_label" for=""> <?php echo e(__("common.description")); ?> </label>
                                        <textarea class="primary_textarea height_112" placeholder="<?php echo e(__('common.description')); ?>" name="description" spellcheck="false"></textarea>
                                    </div>
                                </div>
                            <?php endif; ?>
                                <div class="col-xl-12">
                                    <div class="primary_input">
                                        <label class="primary_input_label" for=""><?php echo e(__('common.status')); ?> <span class="text-danger">*</span></label>
                                        <ul id="theme_nav" class="permission_list sms_list ">
                                            <li>
                                                <label data-id="bg_option"
                                                       class="primary_checkbox d-flex mr-12">
                                                    <input name="status" value="1" class="active" checked type="radio">
                                                    <span class="checkmark"></span>
                                                </label>
                                                <p><?php echo e(__("common.active")); ?> </p>
                                            </li>
                                            <li>
                                                <label data-id="color_option"
                                                       class="primary_checkbox d-flex mr-12">
                                                    <input name="status" value="0" class="de_active"
                                                           type="radio">
                                                    <span class="checkmark"></span>
                                                </label>
                                                <p><?php echo e(__("common.inactive")); ?></p>
                                            </li>
                                        </ul>
                                        <span class="text-danger" id="error_attribute_status"></span>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <strong><?php echo e(__("product.attribute_value")); ?></strong> <span class="text-danger">*</span>
                                    <div class="QA_section2 QA_section_heading_custom check_box_table">
                                        <div class="QA_table mb_15">
                                            <!-- table-responsive -->
                                            <div class="table-responsive">
                                                <table class="table create_attribute_table">
                                                    <tbody>
                                                        <tr class="variant_row_lists">
                                                            <td class="pl-0 pb-0 border-0">
                                                                <input class="placeholder_input" name="variant_values[]" placeholder="-" type="text">
                                                            </td>
                                                            <td class="pl-0 pb-0 pr-0 border-0">
                                                                <div class="add_items_button pt-10">
                                                                    <button type="button" class="primary-btn radius_30px add_single_variant_row  fix-gr-bg">
                                                                        <i class="ti-plus"></i><?php echo e(__('product.add_value')); ?>

                                                                    </button>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr class="variant_row_lists">
                                                            <td class="pl-0 pb-0 border-0">
                                                                <span class="text-danger" id="error_variant_values"></span>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 text-center">
                                    <button class="primary_btn_2 mt-5"><i class="ti-check"></i><?php echo e(__("common.save")); ?> </button>
                                </div>
                            </div>
                        </div>

                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php /**PATH C:\xampp\htdocs\pomalo\Modules/Product\Resources/views/products/components/_create_attribute_modal.blade.php ENDPATH**/ ?>