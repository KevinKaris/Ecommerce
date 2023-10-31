
<?php $__env->startSection('styles'); ?>
<link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/icon-picker.css'))); ?>" />
<link rel="stylesheet" href="<?php echo e(asset(asset_path('modules/product/css/product_create.css'))); ?>" />
<?php $__env->stopSection(); ?>
<?php $__env->startSection('mainContent'); ?>
<section class="admin-visitor-area up_st_admin_visitor">
    <div class="container-fluid p-20 white_box">
        <form action="<?php echo e(route('product.store')); ?>" method="POST" enctype="multipart/form-data" id="choice_form">
            <?php echo csrf_field(); ?>
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="box_header common_table_header">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('product.add_new_product')); ?></h3>
                        </div>
                    </div>
                </div>
            </div>
            <?php if(isModuleActive('FrontendMultiLang')): ?>
            <?php
            $LanguageList = getLanguageList();
            ?>
            <?php endif; ?>
            <ul class="nav nav-tabs justify-content-end mt-sm-md-20 mb-30 grid_gap_5" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active show" href="#GenaralInfo" role="tab" data-toggle="tab" id="1" aria-selected="true"><?php echo e(__('product.general_information')); ?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link show" href="#RelatedProduct" role="tab" data-toggle="tab" id="2" aria-selected="false"><?php echo e(__('product.related_product')); ?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link show" href="#UpSale" role="tab" data-toggle="tab" id="3" aria-selected="false"><?php echo e(__('common.up_sale')); ?></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link show" href="#CrossSale" role="tab" data-toggle="tab" id="4" aria-selected="true"><?php echo e(__('common.cross_sale')); ?></a>
                </li>
            </ul>
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade active show" id="GenaralInfo">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="white_box pt-0 box_shadow_white mb-20 p-15">
                                <div class="row" id="section1">
                                    <div class="col-lg-12">
                                        <div class="main-title d-flex">
                                            <h3 class="mb-2 mr-30"><?php echo e(__('product.product_information')); ?></h3>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <input type="hidden" value="1" id="product_type">
                                        <div class="primary_input">
                                            <label class="primary_input_label" for=""><?php echo e(__('common.type')); ?> <span class="text-danger">*</span> </label>
                                            <ul id="theme_nav" class="permission_list sms_list ">
                                                <li>
                                                    <label data-id="bg_option" class="primary_checkbox d-flex mr-12">
                                                        <input name="product_type" id="single_prod" value="1" <?php if(!old('product_type') || old('product_type') == 1): ?>checked <?php endif; ?> class="active prod_type" type="radio">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                    <p><?php echo e(__('product.single')); ?></p>
                                                </li>
                                                <li>
                                                    <label data-id="color_option" class="primary_checkbox d-flex mr-12">
                                                        <input name="product_type" value="2" id="variant_prod" <?php if(old('product_type') && old('product_type') == 2): ?>checked <?php endif; ?> class="de_active prod_type" type="radio">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                    <p><?php echo e(__('product.variant')); ?></p>
                                                </li>
                                            </ul>
                                        </div>

                                    </div>
                                <?php if(isModuleActive('FrontendMultiLang')): ?>
                                    <div class="col-lg-12">
                                        <ul class="nav nav-tabs justify-content-start mt-sm-md-20 mb-30 grid_gap_5" role="tablist">
                                            <?php $__currentLoopData = $LanguageList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li class="nav-item">
                                                    <a class="nav-link default_lang anchore_color <?php if(auth()->user()->lang_code == $language->code): ?> active <?php endif; ?>" data-id="<?php echo e($language->code); ?>" href="#pnelement<?php echo e($language->code); ?>" role="tab" data-toggle="tab" aria-selected="<?php if(auth()->user()->lang_code == $language->code): ?> true <?php else: ?> false <?php endif; ?>"><?php echo e($language->native); ?> </a>
                                                </li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                        <div class="tab-content">
                                            <?php $__currentLoopData = $LanguageList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div role="tabpanel" class="tab-pane fade <?php if(auth()->user()->lang_code == $language->code): ?> show active <?php endif; ?>" id="pnelement<?php echo e($language->code); ?>">
                                                   <div class="row">
                                                       <div class="col-lg-6">
                                                           <div class="primary_input mb-15">
                                                               <label class="primary_input_label" for="product_name"> <?php echo e(__('common.name')); ?> <span class="text-danger">*</span> &nbsp;<button class="btn btn-sm tip-button">Tip</button></label>
                                                               <div class="tip w-100 alert alert-primary"><span>Tip: </span>The name may contain brand, size, gender, color, etc..., depending on your product</div>
                                                               <input class="primary_input_field" name="product_name[<?php echo e($language->code); ?>]" id="product_name_<?php echo e($language->code); ?>" placeholder="<?php echo e(__('common.name')); ?>" type="text">
                                                               <span class="text-danger" id="error_product_name_<?php echo e($language->code); ?>"><?php echo e($errors->first('product_name')); ?></span>
                                                           </div>
                                                       </div>
                                                       <div class="col-lg-6 sku_single_div d-none" id="default_lang_<?php echo e($language->code); ?>">
                                                           <div class="primary_input mb-15">
                                                               <label class="primary_input_label" for="sku_single"> <?php echo e(__('product.product_sku')); ?></label>
                                                               <input class="primary_input_field" name="product_sku[<?php echo e($language->code); ?>]" id="sku_single" placeholder="<?php echo e(__('product.product_sku')); ?>" type="text" value="<?php echo e(old('product_sku')); ?>">
                                                               <span id="error_single_sku" class="text-danger"><?php echo e($errors->first('product_sku')); ?></span>
                                                           </div>
                                                       </div>
                                                       <div class="col-lg-6 <?php if(!app('general_setting')->product_subtitle_show): ?> d-none <?php endif; ?>">
                                                        <div class="primary_input mb-15">
                                                            <label class="primary_input_label" for="subtitle_1"> <?php echo e(__('product.subtitle_1')); ?></label>
                                                            <input class="primary_input_field" name="subtitle_1[<?php echo e($language->code); ?>]" id="subtitle_1" placeholder="<?php echo e(__('product.subtitle_1')); ?>" type="text" value="<?php echo e(old('subtitle_1')); ?>">
                                                            <span id="error_subtitle_1" class="text-danger"><?php echo e($errors->first('subtitle_1')); ?></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-6 <?php if(!app('general_setting')->product_subtitle_show): ?> d-none <?php endif; ?>">
                                                        <div class="primary_input mb-15">
                                                            <label class="primary_input_label" for="subtitle_2"> <?php echo e(__('product.subtitle_2')); ?></label>
                                                            <input class="primary_input_field" name="subtitle_2[<?php echo e($language->code); ?>]" id="subtitle_2" placeholder="<?php echo e(__('product.subtitle_2')); ?>" type="text" value="<?php echo e(old('subtitle_2')); ?>">
                                                            <span id="error_subtitle_2" class="text-danger"><?php echo e($errors->first('subtitle_2')); ?></span>
                                                        </div>
                                                    </div>
                                                   </div>
                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <div class="col-lg-6">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="product_name"> <?php echo e(__('common.name')); ?> <span class="text-danger">*</span> &nbsp;<button class="btn btn-sm tip-button">Tip</button></label>
                                            <div class="tip w-100 alert alert-primary"><span>Tip: </span>The name may contain brand, size, gender, color, etc..., depending on your product</div>
                                            <input class="primary_input_field" name="product_name" id="product_name" placeholder="<?php echo e(__('common.name')); ?>" type="text" value="<?php echo e(old('product_name')); ?>" required="1">
                                            <span class="text-danger" id="error_product_name"><?php echo e($errors->first('product_name')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 sku_single_div">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="sku_single"> <?php echo e(__('product.product_sku')); ?></label>
                                            <input class="primary_input_field" name="product_sku" id="sku_single" placeholder="<?php echo e(__('product.product_sku')); ?>" type="text" value="<?php echo e(old('product_sku')); ?>">
                                            <span id="error_single_sku" class="text-danger"><?php echo e($errors->first('product_sku')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 <?php if(!app('general_setting')->product_subtitle_show): ?> d-none <?php endif; ?>">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="subtitle_1"> <?php echo e(__('product.subtitle_1')); ?></label>
                                            <input class="primary_input_field" name="subtitle_1" id="subtitle_1" placeholder="<?php echo e(__('product.subtitle_1')); ?>" type="text" value="<?php echo e(old('subtitle_1')); ?>">
                                            <span id="error_subtitle_1" class="text-danger"><?php echo e($errors->first('subtitle_1')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 <?php if(!app('general_setting')->product_subtitle_show): ?> d-none <?php endif; ?>">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="subtitle_2"> <?php echo e(__('product.subtitle_2')); ?></label>
                                            <input class="primary_input_field" name="subtitle_2" id="subtitle_2" placeholder="<?php echo e(__('product.subtitle_2')); ?>" type="text" value="<?php echo e(old('subtitle_2')); ?>">
                                            <span id="error_subtitle_2" class="text-danger"><?php echo e($errors->first('subtitle_2')); ?></span>
                                        </div>
                                    </div>
                                <?php endif; ?>
                                    <div class="col-lg-3">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="model_number"> <?php echo e(__('common.model_number')); ?></label>
                                            <input class="primary_input_field" id="model_number" name="model_number" placeholder="<?php echo e(__('common.model_number')); ?>" type="text" value="<?php echo e(old('model_number')); ?>">
                                            <span class="text-danger"><?php echo e($errors->first('model_number')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3" id="category_select_div">
                                        <?php echo $__env->make('product::products.components._category_list_select', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>
                                    <div class="col-lg-3" id="brand_select_div">
                                        <?php echo $__env->make('product::products.components._brand_list_select', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>
                                    <div class="col-lg-3" id="unit_select_div" style="display: none;">
                                        <?php echo $__env->make('product::products.components._unit_list_select', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>
                                    
                                    <div class="col-lg-3" style="display: none">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="barcode_type"><?php echo e(__('product.barcode_type')); ?></label>
                                            <select name="barcode_type" id="barcode_type" class="primary_select mb-15">
                                                <option disabled><?php echo e(__('product.select_barcode')); ?></option>
                                                <?php $__currentLoopData = barcodeList(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $barcode): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($barcode); ?>" <?php if(old('barcode_type') == $barcode): ?> selected <?php elseif($key==0): ?> selected <?php endif; ?>><?php echo e($barcode); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                            <span class="text-danger"><?php echo e($errors->first('barcode_type')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="minimum_order_qty"> <?php echo e(__('product.minimum_order_qty')); ?> <span class="text-danger">*</span>
                                            </label>
                                            <input class="primary_input_field" name="minimum_order_qty" id="minimum_order_qty" value="<?php echo e(old('minimum_order_qty')?old('minimum_order_qty'):1); ?>" type="number" min="1" step="0" required="1">
                                            <span class="text-danger" id="error_minumum_qty"><?php echo e($errors->first('minimum_order_qty')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="max_order_qty"> <?php echo e(__('product.max_order_qty')); ?></label>
                                            <input class="primary_input_field" id="max_order_qty" name="max_order_qty" type="number" min="0" step="0" value="<?php echo e(old('max_order_qty')); ?>">
                                            <span class="text-danger"><?php echo e($errors->first('max_order_qty')); ?></span>
                                        </div>
                                    </div>
                                    <?php if(isModuleActive('GoogleMerchantCenter')): ?>
                                    <div class="col-lg-3">
                                        <div class="primary_input mb-25">
                                            <label class="primary_input_label" for="condition"><?php echo e(__('product.product_condition')); ?></label>
                                            <select class="primary_select mb-25" name="condition" id="condition">
                                                <option value="new" <?php if(old('condition') && old('condition') == 'new'): ?> selected <?php endif; ?>><?php echo e(__('product.new')); ?></option>
                                                <option value="used" <?php if(old('condition') && old('condition') == 'used'): ?> selected <?php endif; ?>><?php echo e(__('product.used')); ?></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="gtin"> <?php echo e(__('common.gtin')); ?></label>
                                            <input class="primary_input_field" name="gtin" id="gtin" placeholder="<?php echo e(__('common.gtin')); ?>" type="text" value="<?php echo e(old('gtin')); ?>">
                                            <span class="text-danger" id="error_gtin"><?php echo e($errors->first('gtin')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="mpn"> <?php echo e(__('common.mpn')); ?></label>
                                            <input class="primary_input_field" name="mpn" id="mpn" placeholder="<?php echo e(__('common.mpn')); ?>" type="text" value="<?php echo e(old('mpn')); ?>">
                                            <span class="text-danger" id="error_mpn"><?php echo e($errors->first('mpn')); ?></span>
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    <div class="col-lg-12">
                                        <div class="single_field ">
                                            <label for=""><?php echo app('translator')->get('blog.tags'); ?> (<?php echo app('translator')->get('product.comma_separated'); ?>)<span class="text-danger">*</span></label>
                                        </div>
                                        <div class="tagInput_field mb_26">
                                            <input name="tags" id="tags" class="tag-input" type="text" value="<?php echo e(old('tags')); ?>" data-role="tagsinput" />
                                        </div>
                                        <br>
                                        <div class="suggeted_tags">
                                            <label><?php echo app('translator')->get('blog.suggested_tags'); ?></label>
                                            <div id="tag_show" class="suggested_tag_show">
                                            </div>
                                        </div>
                                        <br>
                                        <span class="text-danger" id="error_tags"></span>
                                    </div>
                                    <div class="col-lg-12 attribute_div" id="attribute_select_div">
                                        <?php echo $__env->make('product::products.components._attribute_list_select', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="customer_choice_options" id="customer_choice_options">
                                            <?php if(old('choice_no')): ?>
                                                <?php $__currentLoopData = old('choice_no'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $id): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <?php
                                                        $attribute = \Modules\Product\Entities\Attribute::find($id);
                                                    ?>
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <input type="hidden" name="choice_no[]" id="attribute_id_<?php echo e($attribute->id); ?>" value="<?php echo e($attribute->id); ?>">
                                                            <div class="primary_input mb-25">
                                                                <input class="primary_input_field" width="40%" name="choice[]" type="text" value="<?php echo e($attribute->name); ?>" readonly>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-7">
                                                            <div class="primary_input mb-25">
                                                                <select name="choice_options_<?php echo e($attribute->id); ?>[]" id="choice_options" class="primary_select mb-15 choice_attribute" multiple>
                                                                    <?php $__currentLoopData = $attribute->values; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                        <option value="<?php echo e($value->id); ?>" <?php if(in_array($value->id, old('choice_options_'.$attribute->id))): ?> selected <?php endif; ?>> <?php echo e($value->color ? $value->color->name : $value->value); ?> </option>
                                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                </select>
                                                            </div>
                                                        </div>

                                                        <div class="col-lg-1 text-center">
                                                            <a class="btn cursor_pointer attribute_remove"><i class="ti-trash"></i></a>
                                                        </div>

                                                    </div>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            <?php endif; ?>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 sku_combination overflow-auto">
                                    </div>
                                    <div class="col-xl-12">
                                        <div class="primary_input">
                                            <ul id="theme_nav" class="permission_list sms_list ">
                                                <li>
                                                    <label data-id="bg_option" class="primary_checkbox d-flex mr-12">
                                                        <input name="is_physical" id="is_physical" checked value="1" type="checkbox">
                                                        <span class="checkmark"></span>
                                                    </label>
                                                    <p><?php echo e(__('product.is_physical_product')); ?></p>
                                                    <input type="hidden" name="is_physical" value="1" id="is_physical_prod">
                                                </li>
                                            </ul>

                                        </div>
                                    </div>
                                    <div class="col-lg-12  weight_height_div">
                                        <div class="main-title d-flex">
                                            <h3 class="mb-3 mr-30"><?php echo e(__('product.weight_height_info')); ?></h3>
                                        </div>
                                       <div class="row">
                                           <div class="col-lg-3">
                                               <div class="primary_input mb-15">
                                                   <label class="primary_input_label" for="weight"> <?php echo e(__('product.weight')); ?> [Gm]</label>
                                                   <input class="primary_input_field" name="weight" id="weight" type="number" min="0" step="<?php echo e(step_decimal()); ?>" value="<?php echo e(old('weight')); ?>">
                                                   <span class="text-danger" id="error_weight"><?php echo e($errors->first('weight')); ?></span>
                                               </div>
                                           </div>
                                           <div class="col-lg-3">
                                               <div class="primary_input mb-15">
                                                   <label class="primary_input_label" for="length"> <?php echo e(__('product.length')); ?> [Cm]</label>
                                                   <input class="primary_input_field" name="length" id="length" type="number" min="0" step="<?php echo e(step_decimal()); ?>" value="<?php echo e(old('length')); ?>">
                                                   <span class="text-danger" id="error_length"><?php echo e($errors->first('length')); ?></span>
                                               </div>
                                           </div>
                                           <div class="col-lg-3">
                                               <div class="primary_input mb-15">
                                                   <label class="primary_input_label" for="breadth"> <?php echo e(__('product.breadth')); ?> [Cm]</label>
                                                   <input class="primary_input_field" name="breadth" id="breadth" type="number" min="0" step="<?php echo e(step_decimal()); ?>" value="<?php echo e(old('breadth')); ?>">
                                                   <span class="text-danger" id="error_breadth"><?php echo e($errors->first('breadth')); ?></span>
                                               </div>
                                           </div>

                                           <div class="col-lg-3">
                                               <div class="primary_input mb-15">
                                                   <label class="primary_input_label" for="height"> <?php echo e(__('product.height')); ?> [Cm]</label>
                                                   <input class="primary_input_field" name="height" id="height" type="number" min="0" step="<?php echo e(step_decimal()); ?>" value="<?php echo e(old('height')); ?>">
                                                   <span class="text-danger" id="error_height"><?php echo e($errors->first('height')); ?></span>
                                               </div>
                                           </div>
                                       </div>
                                    </div>
                                    <div id="phisical_shipping_div" class="col-lg-12">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="primary_input mb-15">
                                                    <label class="primary_input_label" for="additional_shipping"> <?php echo e(__('product.additional_shipping_charge')); ?> </label>
                                                    <input class="primary_input_field" name="additional_shipping" type="number" min="0" step="<?php echo e(step_decimal()); ?>" value="<?php echo e(old('additional_shipping')?old('additional_shipping'):0); ?>">
                                                    <span class="text-danger"><?php echo e($errors->first('additional_shipping')); ?></span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 digital_file_upload_div">
                                        <div class="primary_input mb-25">
                                            <label class="primary_input_label" for="pdf_place"><?php echo e(__('product.program_file_upload')); ?></label>
                                            <div class="primary_file_uploader">
                                                <input class="primary-input" type="text" id="pdf_place" placeholder="<?php echo e(__('product.upload_file')); ?>" readonly>
                                                <button class="" type="button">
                                                    <label class="primary-btn small fix-gr-bg" for="digital_file"><?php echo e(__('product.Browse')); ?> </label>
                                                    <input type="file" class="d-none" name="single_digital_file" id="digital_file">
                                                </button>
                                            </div>
                                            <span class="text-danger"><?php echo e($errors->first('documents')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 text-center">
                                        <div class="filling_message alert alert-danger text-danger w-100"></div>
                                        <a href="#section2" class="primary_btn_2 text-center" id="sectionNext2" style="float: right;">Next</a>
                                    </div>
                                </div>
                                <div class="row" id="section2">
                                    <div class="col-lg-12">
                                        <div class="main-title d-flex">
                                            <h3 class="mb-3 mr-30"><?php echo e(__('product.price_info_and_stock')); ?></h3>
                                        </div>
                                    </div>
                                    <?php if(!isModuleActive('MultiVendor')): ?>
                                        <div class="col-lg-12" id="stock_manage_div">
                                            <div class="primary_input mb-25">
                                                <label class="primary_input_label" for="stock_manage"><?php echo e(__('Stock Manage')); ?></label>
                                                <select class="primary_select mb-25" name="stock_manage" id="stock_manage">
                                                    <option value="1" <?php if(old('stock_manage') & old('stock_manage') == '1'): ?> selected <?php endif; ?>><?php echo e(__('common.yes')); ?></option>
                                                    <option value="0" <?php if(old('stock_manage') & old('stock_manage') == '0'): ?> selected <?php endif; ?>><?php echo e(__('common.no')); ?></option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 d-none" id="single_stock_div">
                                            <div class="primary_input mb-15">
                                                <label class="primary_input_label" for="single_stock"> <?php echo e(__('product.product_stock')); ?></label>
                                                <input class="primary_input_field" name="single_stock" id="single_stock" type="number" min="0" step="0" value="<?php echo e(old('single_stock')?old('single_stock'):0); ?>">
                                                <span class="text-danger"><?php echo e($errors->first('single_stock')); ?></span>
                                            </div>
                                        </div>

                                    <?php endif; ?>

                                    <div class="col-lg-6 selling_price_div">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for=""> <?php echo e(__('product.selling_price')); ?> <span class="text-danger">*</span></label>
                                            <input class="primary_input_field selling_price" name="selling_price" id="selling_price" placeholder="<?php echo e(__('product.selling_price')); ?>" type="number" min="0" step="<?php echo e(step_decimal()); ?>" value="<?php echo e(old('selling_price')?old('selling_price'):0); ?>">
                                            <span class="text-danger" id="error_selling_price"><?php echo e($errors->first('selling_price')); ?></span>
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="discount"> <?php echo e(__('product.discount')); ?></label>
                                            <input class="primary_input_field" name="discount" id="discount" placeholder="<?php echo e(__('product.discount')); ?>" type="number" min="0" step="<?php echo e(step_decimal()); ?>" value="<?php echo e(old('discount')?old('discount'):0); ?>">
                                            <span class="text-danger" id="error_discunt"><?php echo e($errors->first('discount')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-3">
                                        <div class="primary_input mb-25">
                                            <label class="primary_input_label" for="discount_type"><?php echo e(__('product.discount_type')); ?></label>
                                            <select class="primary_select mb-25" name="discount_type" id="discount_type">
                                                <option value="1" <?php if(old('discount_type') && old('discount_type') == 1): ?> selected <?php endif; ?>><?php echo e(__('common.amount')); ?></option>
                                                <option value="0" <?php if(old('discount_type') && old('discount_type') == 0): ?> selected <?php endif; ?>><?php echo e(__('common.percentage')); ?></option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="primary_input mb-25">
                                            <label class="primary_input_label" for="tax_type"><?php echo e(__('gst.GST_group')); ?></label>
                                            <select class="primary_select mb-25" name="gst_group" id="tax_type">
                                                <option value="" selected disabled><?php echo e(__('common.select_one')); ?></option>
                                                <?php $__currentLoopData = $gst_groups; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $group): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                    <option value="<?php echo e($group->id); ?>" <?php if(old('gst_group') && old('gst_group') == $group->id): ?> selected <?php endif; ?>><?php echo e($group->name); ?></option>
                                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-6" id="gst_list_div">
                                    </div>
                                    <!-- Whole-Sale -->
                                    <?php if(isModuleActive('WholeSale')): ?>
                                    <div class="col-lg-12 whole_sale_info_add" id="whole_sale_info_add">
                                        <h3 class="mb-2 mr-30"><?php echo e(__('wholesale.Wholesale Price')); ?></h3>
                                        <div class="QA_section2 QA_section_heading_custom check_box_table">
                                            <div class="QA_table mb_15">
                                                <!-- table-responsive -->
                                                <div class="table-responsive">
                                                    <table class="table create_table">
                                                        <tbody>
                                                        <tr class="whole_sale_price_list">
                                                            <td class="pl-0 pb-0 border-0">
                                                                <input type="text" class="form-control primary_input_field" placeholder="<?php echo e(__('wholesale.Min QTY')); ?>" name="wholesale_min_qty_0[]">
                                                            </td>
                                                            <td class="pl-0 pb-0 border-0">
                                                                <input type="text" class="form-control primary_input_field" placeholder="<?php echo e(__('wholesale.Max QTY')); ?>" name="wholesale_max_qty_0[]">
                                                            </td>
                                                            <td class="pl-0 pb-0 border-0">
                                                                <input type="text" class="form-control primary_input_field" placeholder="<?php echo e(__('wholesale.Price per piece')); ?>" name="wholesale_price_0[]">
                                                            </td>
                                                        </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="add_items_button mb-20">
                                            <button type="button" class="btn btn-light btn-sm border add_single_whole_sale_price"> <?php echo e(__('wholesale.Add More')); ?> </button>
                                        </div>
                                    </div>
                                    <?php endif; ?>
                                    <!-- End Whole-Sale -->
                                <?php if(isModuleActive('FrontendMultiLang')): ?>
                                    <div class="col-lg-12">
                                        <ul class="nav nav-tabs justify-content-start mt-sm-md-20 mb-30 grid_gap_5" role="tablist">
                                            <?php $__currentLoopData = $LanguageList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <li class="nav-item">
                                                    <a class="nav-link anchore_color <?php if(auth()->user()->lang_code == $language->code): ?> active <?php endif; ?>" href="#pelement<?php echo e($language->code); ?>" role="tab" data-toggle="tab" aria-selected="<?php if(auth()->user()->lang_code == $language->code): ?> true <?php else: ?> false <?php endif; ?>"><?php echo e($language->native); ?> </a>
                                                </li>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                        <div class="tab-content">
                                            <?php $__currentLoopData = $LanguageList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div role="tabpanel" class="tab-pane fade <?php if(auth()->user()->lang_code == $language->code): ?> show active <?php endif; ?>" id="pelement<?php echo e($language->code); ?>">
                                                    <div class="col-lg-12">
                                                        <div class="main-title d-flex">
                                                            <h3 class="mb-3 mr-30"><?php echo e(__('common.description')); ?></h3>
                                                            &nbsp;<button class="btn btn-sm tip-button2">Tip</button>
                                                        </div>
                                                        <div class="tip2 w-100 alert alert-primary"><span>Tip:</span>Your first 25 words should contain the most important description</div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="primary_input mb-15 description-part1">
                                                            <textarea class="summernote" name="description[<?php echo e($language->code); ?>]"> <?php echo e(old('description')); ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="main-title d-flex">
                                                            <h3 class="mb-3 mr-30"><?php echo e(__('product.specifications')); ?></h3>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="primary_input mb-15">
                                                            <textarea class="summernote2" id="specification" name="specification[<?php echo e($language->code); ?>]"> <?php echo e(old('specification')); ?> </textarea>
                                                        </div>
                                                    </div>
                
                                                    <div class="col-lg-12">
                                                        <div class="main-title d-flex">
                                                            <h3 class="mb-3 mr-30"><?php echo e(__('common.seo_info')); ?></h3>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="primary_input mb-15">
                                                            <label class="primary_input_label" for="meta_title"> <?php echo e(__('common.meta_title')); ?></label>
                                                            <input class="primary_input_field meta_title" id="meta_title" name="meta_title[<?php echo e($language->code); ?>]" placeholder="<?php echo e(__('common.meta_title')); ?>" type="text" value="<?php echo e(old('meta_title')); ?>">
                                                            <span class="text-danger"><?php echo e($errors->first('meta_title')); ?></span>
                                                        </div>
                                                    </div>
                                                    <div class="col-lg-12">
                                                        <div class="primary_input mb-15">
                                                            <label class="primary_input_label" for="meta_description"> <?php echo e(__('common.meta_description')); ?></label>
                                                            <textarea class="primary_textarea height_112 meta_description" id="meta_description" placeholder="<?php echo e(__('common.meta_description')); ?>" name="meta_description[<?php echo e($language->code); ?>]" spellcheck="false"><?php echo e(old('meta_description')); ?></textarea>
                                                            <span class="text-danger"><?php echo e($errors->first('meta_description')); ?></span>
                                                        </div>
                                                    </div>
                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    </div>
                                <?php else: ?>
                                    <div class="col-lg-12">
                                        <div class="main-title d-flex">
                                            <h3 class="mb-3 mr-30"><?php echo e(__('common.description')); ?></h3>
                                            &nbsp;<button class="btn btn-sm tip-button2">Tip</button>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="tip2 w-100 alert alert-primary"><span>Tip: </span>Your first 25 words should contain the most important description</div>
                                        <div class="primary_input mb-15 description-part2">
                                            <textarea class="summernote" name="description"> <?php echo e(old('description')); ?></textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="main-title d-flex">
                                            <h3 class="mb-3 mr-30"><?php echo e(__('product.specifications')); ?></h3>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="primary_input mb-15">
                                            <textarea class="summernote2" id="specification" name="specification"> <?php echo e(old('specification')); ?> </textarea>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="main-title d-flex">
                                            <h3 class="mb-3 mr-30"><?php echo e(__('common.seo_info')); ?></h3>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="meta_title"> <?php echo e(__('common.meta_title')); ?></label>
                                            <input class="primary_input_field meta_title" id="meta_title" name="meta_title" placeholder="<?php echo e(__('common.meta_title')); ?>" type="text" value="<?php echo e(old('meta_title')); ?>">
                                            <span class="text-danger"><?php echo e($errors->first('meta_title')); ?></span>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="primary_input mb-15">
                                            <label class="primary_input_label" for="meta_description"> <?php echo e(__('common.meta_description')); ?></label>
                                            <textarea class="primary_textarea height_112 meta_description" id="meta_description" placeholder="<?php echo e(__('common.meta_description')); ?>" name="meta_description" spellcheck="false"><?php echo e(old('meta_description')); ?></textarea>
                                            <span class="text-danger"><?php echo e($errors->first('meta_description')); ?></span>
                                        </div>
                                    </div>
                                <?php endif; ?>
                                    <div class="col-lg-12">
                                        <div class="primary_input mb-25">
                                            <label class="primary_input_label" for=""><?php echo e(__('product.meta_image')); ?> (300x300)PX</label>
                                            <div class="primary_file_uploader" data-toggle="amazuploader" data-multiple="false" data-type="image" data-name="meta_image">
                                                <input class="primary-input file_amount" type="text" id="meta_image_file" placeholder="<?php echo e(__('common.browse_image_file')); ?>" readonly="">
                                                <button class="" type="button">
                                                    <label class="primary-btn small fix-gr-bg" for="meta_image"><?php echo e(__('product.meta_image')); ?> </label>
                                                    <input type="hidden" class="selected_files" id="meta_image_input" value="<?php echo e(old('meta_image')); ?>">
                                                </button>
                                            </div>
                                            <div class="product_image_all_div">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 text-center">
                                        <div class="filling_message2 alert alert-danger text-danger w-100"></div>
                                        <a href="#section3" class="primary_btn_2 mt-5 text-center" id="sectionNext3" style="float: right;">Next</a>
                                        <a href="#section1" class="primary_btn_2 mt-5 mx-4 text-center" id="sectionBack1" style="float: right;">Back</a>
                                    </div>
                                </div>
                                <div class="row" id="section3">
                                    <div class="row image_section">
                                        <div class="col-lg-12">
                                            <div class="main-title d-flex">
                                                <h3 class="mb-3 mr-30"><?php echo e(__('product.product_image_info')); ?></h3>
                                            </div>
                                            <div class="tip3 alert alert-primary"><b>Note:</b> Maximum number of images accepted is 8</div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="primary_input mb-25">
                                                <div class="primary_file_uploader" id="product-image" data-toggle="amazuploader" data-multiple="true" data-type="image" data-name="images[]">
                                                    <input class="primary-input file_amount" type="text" id="thumbnail_image_file" placeholder="<?php echo e(__('Choose Images')); ?>" readonly="">
                                                    <button class="" type="button">
                                                        <label class="primary-btn small fix-gr-bg" for="thumbnail_image"><?php echo e(__('product.Browse')); ?> </label>
                                                        <input type="hidden" id="product_images_array" class="selected_files image_selected_files" value="<?php echo e(old('images')?implode(',',old('images')):''); ?>">
                                                    </button>
                                                    <span class="text-danger" id="error_thumbnail"></span>
                                                </div>
                                                <div class="product_image_all_div">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="main-title d-flex">
                                                <h3 class="mb-3 mr-30"><?php echo e(__('product.pdf_specifications')); ?></h3>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="primary_input mb-25">
                                                <label class="primary_input_label" for=""><?php echo e(__('product.pdf_specifications')); ?></label>
                                                <div class="primary_file_uploader">
                                                    <input class="primary-input" type="text" id="pdf_place1" placeholder="<?php echo e(__('product.upload_pdf')); ?>" readonly>
                                                    <button class="" type="button">
                                                        <label class="primary-btn small fix-gr-bg" for="pdf"><?php echo e(__('product.Browse')); ?> </label>
                                                        <input type="file" class="d-none" name="pdf_file" id="pdf">
                                                    </button>
                                                </div>
                                                <span class="text-danger"><?php echo e($errors->first('documents')); ?></span>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="main-title d-flex">
                                                <h3 class="mb-3 mr-30"><?php echo e(__('product.product_videos_info')); ?></h3>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="primary_input mb-25">
                                                <label class="primary_input_label" for="video_provider"><?php echo e(__('product.video_provider')); ?></label>
                                                <select class="primary_select mb-25" name="video_provider" id="video_provider">
                                                    <option value="youtube" <?php if(!old('video_provider') || old('video_provider') == 'youtube'): ?> selected <?php endif; ?>><?php echo e(__('product.youtube')); ?></option>
                                                    <option value="daily_motion" <?php if(old('video_provider') && old('video_provider') == 'daily_motion'): ?> selected <?php endif; ?>><?php echo e(__('product.daily_motion')); ?></option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="primary_input mb-15">
                                                <label class="primary_input_label" for="video_link"> <?php echo e(__('product.video_link')); ?></label>
                                                <input class="primary_input_field" id="video_link" name="video_link" placeholder="<?php echo e(__('product.video_link')); ?>" type="text" value="<?php echo e(old('video_link')); ?>">
                                                <span class="text-danger"><?php echo e($errors->first('video_link')); ?></span>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="main-title d-flex">
                                                <h3 class="mb-3 mr-30"><?php echo e(__('product.others_info')); ?></h3>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="primary_input">
                                                <label class="primary_input_label" for=""><?php echo e(__('common.status')); ?> <span class="text-danger">*</span></label>
                                                <ul id="theme_nav" class="permission_list sms_list ">
                                                    <li>
                                                        <label data-id="bg_option" class="primary_checkbox d-flex mr-12">
                                                            <input name="status" id="status_active" value="1" <?php if(old('status') == null || old('status') == 1): ?> checked <?php endif; ?> class="active" type="radio">
                                                            <span class="checkmark"></span>
                                                        </label>
                                                        <p><?php echo e(__('common.publish')); ?></p>
                                                    </li>
                                                    <li>
                                                        <label data-id="color_option" class="primary_checkbox d-flex mr-12">
                                                            <input name="status" value="0" id="status_inactive" <?php if(old('status') != null && old('status') == 0): ?> checked <?php endif; ?> class="de_active" type="radio">
                                                            <span class="checkmark"></span>
                                                        </label>
                                                        <p><?php echo e(__('common.pending')); ?></p>
                                                    </li>
                                                </ul>
                                                <span class="text-danger" id="status_error"></span>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="primary_input">
                                                <label class="primary_input_label" for=""><?php echo e(__('common.make_Display_in_details_page')); ?> <span
                                                        class="text-danger">*</span></label>
                                                <ul id="theme_nav" class="permission_list sms_list ">
                                                    <li>
                                                        <label data-id="bg_option" class="primary_checkbox d-flex mr-12">
                                                            <input name="display_in_details" id="status_active" value="1" <?php if(!old('display_in_details') || old('display_in_details') == 1): ?> checked <?php endif; ?> class="active" type="radio">
                                                            <span class="checkmark"></span>
                                                        </label>
                                                        <p><?php echo e(__('common.up_sale')); ?></p>
                                                    </li>
                                                    <li>
                                                        <label data-id="color_option" class="primary_checkbox d-flex mr-12">
                                                            <input name="display_in_details" value="2" id="status_inactive" class="de_active" type="radio" <?php if(old('display_in_details') && old('display_in_details') == 2): ?> checked <?php endif; ?>>
                                                            <span class="checkmark"></span>
                                                        </label>
                                                        <p><?php echo e(__('common.cross_sale')); ?></p>
                                                    </li>
                                                </ul>
                                                <span class="text-danger" id="status_error"></span>
                                            </div>
                                        </div>
    
                                        <?php if(isModuleActive('GoldPrice')): ?>
                                            <div class="col-lg-12">
                                                <div class="primary_input">
                                                    <label class="primary_input_label" for=""><?php echo e(__('Auto update required')); ?> <span
                                                            class="text-danger">*</span></label>
                                                    <ul id="theme_nav" class="permission_list sms_list ">
                                                        <li>
                                                            <label data-id="bg_option" class="primary_checkbox d-flex mr-12">
                                                                <input name="auto_update_required" id="auto_update_required_active" value="1" <?php if(old('auto_update_required') == null || old('auto_update_required') == 1): ?> checked <?php endif; ?> class="active" type="radio">
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <p><?php echo e(__('common.on')); ?></p>
                                                        </li>
                                                        <li>
                                                            <label data-id="color_option" class="primary_checkbox d-flex mr-12">
                                                                <input name="auto_update_required" value="0" id="auto_update_required_inactive" class="de_active" type="radio" <?php if(old('auto_update_required') != null && old('auto_update_required') == 0): ?> checked <?php endif; ?>>
                                                                <span class="checkmark"></span>
                                                            </label>
                                                            <p><?php echo e(__('common.off')); ?></p>
                                                        </li>
                                                    </ul>
                                                    <span class="text-danger" id="auto_update_required_error"></span>
                                                </div>
                                            </div>
    
                                            <div class="col-lg-6">
                                                <div class="primary_input mb-25">
                                                    <label class="primary_input_label" for=""><?php echo e(__('Gold Price')); ?></label>
                                                    <select class="primary_select mb-25" name="gold_price_id" id="gold_price_id">
                                                        <?php $__currentLoopData = $gold_prices; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $gold_price): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <option data-price="<?php echo e($gold_price->price); ?>" value="<?php echo e($gold_price->id); ?>" <?php if(old('gold_price_id') && old('gold_price_id') == $gold_price->id): ?> selected <?php endif; ?>><?php echo e($gold_price->name); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-lg-6">
                                                <div class="primary_input mb-15">
                                                    <label class="primary_input_label" for="making_charge"> <?php echo e(__('Making Charge')); ?>

                                                    </label>
                                                    <input class="primary_input_field" name="making_charge" id="making_charge" placeholder="-" type="number" min="0" step="<?php echo e(step_decimal()); ?>" value="<?php echo e(old('making_charge')?old('making_charge'):0); ?>">
                                                    <span class="text-danger" id="error_making_charge"><?php echo e($errors->first('making_charge')); ?></span>
                                                </div>
                                            </div>
                                        <?php endif; ?>
                                    </div>
                                    <div class="row text-center w-100">
                                        <div class="col-lg-12">
                                            <div class="alert alert-warning mt-30 text-center">
                                                <?php echo e(__('product.save_information')); ?>

                                                <button type="button" class="close" data-dismiss="alert" aria-label="Close"> <span aria-hidden="true">&times;</span> </button>
                                            </div>
                                        </div>
                                        <input type="hidden" name="request_from" value="main_product_form">
                                        <div class="col-12 text-center">
                                            <input type="hidden" name="save_type" id="save_type">
                                            <button class="primary_btn_2 mt-5 text-center saveBtn" data-value="only_save"><i class="ti-check"></i><?php echo e(__('common.save')); ?></button>
                                            <?php if(isModuleActive('MultiVendor')): ?>
                                            <button class="primary_btn_2 mt-5 text-center saveBtn" data-value="save_publish"><i class="ti-check"></i><?php echo e(__('common.save')); ?> & <?php echo e(__('common.publish')); ?></button><br>
                                            <?php endif; ?>
                                            <a href="#section2" class="btn primary_btn_2 mt-5 text-center" id="sectionBack2">Back</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="RelatedProduct">
                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('product.related_product')); ?></h3>
                        </div>
                    </div>
                    <input class="primary_input_field" placeholder="Quick Search" type="text" id="rsearch_products">
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table position-relative" id="related_product">
                            <!-- table-responsive -->
                            <div class="table-responsive" id="product_list_div">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th width="10%" scope="col">
                                                <label class="primary_checkbox d-flex ">
                                                    <input type="checkbox" id="relatedProductAll">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </th>
                                            <th width="20%" scope="col"><?php echo e(__('common.name')); ?></th>
                                            <th width="15%" scope="col"><?php echo e(__('product.brand')); ?></th>
                                            <th width="10%" scope="col"><?php echo e(__('product.thumbnail')); ?></th>
                                            <th width="10%" scope="col"><?php echo e(__('product.created_at')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablecontentsrelatedProduct">
                                        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <th scope="col">
                                                <label class="primary_checkbox d-flex">
                                                    <input name="related_product[]" id="related_product_<?php echo e($key); ?>"
                                                        <?php if(isset($product) && @$product->relatedProducts->where('related_sale_product_id',$item->id)->first()): ?> checked <?php endif; ?> value="<?php echo e($item->id); ?>" type="checkbox" class="related_product_checked">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </th>
                                            <td><?php echo e($item->product_name); ?></td>
                                            <td><?php echo e(@$item->brand->name); ?></td>
                                            <td>
                                                <div class="product_img_div">
                                                    <img class="product_list_img" src="<?php echo e(showImage($item->thumbnail_image_source)); ?>" alt="<?php echo e($item->product_name); ?>">
                                                </div>
                                            </td>
                                            <td><?php echo e(date(app('general_setting')->dateFormat->format, strtotime($item->created_at))); ?></td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody> 
                                </table>
                                <div class="pagination-container">
                                    <?php
                                        echo $products->links();
                                    ?>
                                     
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="related_product_hidden_name" id="related_product_hidden_id">
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="UpSale">

                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('common.up_sale')); ?></h3>
                        </div>
                    </div>
                    <input class="primary_input_field" placeholder="Quick Search" type="text" id="upsale_search_products">
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table" id="upsale_products">
                            <!-- table-responsive -->
                            <div class="table-responsive" id="product_list_div">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th width="10%" scope="col">
                                                <label class="primary_checkbox d-flex ">
                                                    <input type="checkbox" id="upSaleAll">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </th>
                                            <th width="20%" scope="col"><?php echo e(__('common.name')); ?></th>
                                            <th width="15%" scope="col"><?php echo e(__('product.brand')); ?></th>
                                            <th width="10%" scope="col"><?php echo e(__('product.thumbnail')); ?></th>
                                            <th width="10%" scope="col"><?php echo e(__('product.created_at')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablecontentsupSaleAll">
                                        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <th scope="col">
                                                <label class="primary_checkbox d-flex">
                                                    <input name="up_sale[]" id="up_sale_<?php echo e($key); ?>" <?php if(isset($product) && @$product->upSales->where('up_sale_product_id',$item->id)->first()): ?> checked <?php endif; ?> value="<?php echo e($item->id); ?>" type="checkbox" class="upsale_product_checked">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </th>
                                            <td><?php echo e($item->product_name); ?></td>
                                            <td><?php echo e(@$item->brand->name); ?></td>
                                            <td>
                                                <div class="product_img_div">
                                                    <img class="product_list_img" src="<?php echo e(showImage($item->thumbnail_image_source)); ?>" alt="<?php echo e($item->product_name); ?>">
                                                </div>
                                            </td>
                                            <td><?php echo e(date(app('general_setting')->dateFormat->format, strtotime($item->created_at))); ?></td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                                <div class="pagination-container">
                                 <?php
                                    echo $products->links();
                                ?>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="upsale_product_hidden_name" id="upsale_product_hidden_id">
                    </div>
                </div>


                <div role="tabpanel" class="tab-pane fade" id="CrossSale">

                    <div class="box_header common_table_header ">
                        <div class="main-title d-md-flex">
                            <h3 class="mb-0 mr-30 mb_xs_15px mb_sm_20px"><?php echo e(__('common.cross_sale')); ?></h3>
                        </div>
                    </div>
                    <input class="primary_input_field" placeholder="Quick Search" type="text" id="crosssale_search_products">
                    <div class="QA_section QA_section_heading_custom check_box_table">
                        <div class="QA_table" id="crosssale_products">
                            <!-- table-responsive -->
                            <div class="table-responsive" id="product_list_div">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th width="10%" scope="col">
                                                <label class="primary_checkbox d-flex ">
                                                    <input type="checkbox" id="crossSaleAll">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </th>
                                            <th width="20%" scope="col"><?php echo e(__('common.name')); ?></th>
                                            <th width="15%" scope="col"><?php echo e(__('product.brand')); ?></th>
                                            <th width="10%" scope="col"><?php echo e(__('product.thumbnail')); ?></th>
                                            <th width="10%" scope="col"><?php echo e(__('product.created_at')); ?></th>
                                        </tr>
                                    </thead>
                                    <tbody id="tablecontentscrossSaleAll">
                                        <?php $__currentLoopData = $products; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <th scope="col">
                                                <label class="primary_checkbox d-flex">
                                                    <input name="cross_sale[]" id="cross_sale_<?php echo e($key); ?>" <?php if(isset($product) &&  @$product->crossSales->where('cross_sale_product_id',$item->id)->first()): ?> checked <?php endif; ?> value="<?php echo e($item->id); ?>" type="checkbox" class="crosssale_product_checked">
                                                    <span class="checkmark"></span>
                                                </label>
                                            </th>
                                            <td><?php echo e($item->product_name); ?></td>
                                            <td><?php echo e(@$item->brand->name); ?></td>
                                            <td>
                                                <div class="product_img_div">
                                                    <img class="product_list_img" src="<?php echo e(showImage($item->thumbnail_image_source)); ?>" alt="<?php echo e($item->product_name); ?>">
                                                </div>
                                            </td>
                                            <td><?php echo e(date(app('general_setting')->dateFormat->format, strtotime($item->created_at))); ?></td>
                                        </tr>
                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                    </tbody>
                                </table>
                                <div class="pagination-container">
                                <?php
                                    echo $products->links();
                                ?>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="crosssale_product_hidden_name" id="crosssale_product_hidden_id">
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>

<?php echo $__env->make('product::products.components._create_category_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('product::products.components._create_brand_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('product::products.components._create_unit_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('product::products.components._create_attribute_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php echo $__env->make('product::products.components._create_shipping_modal', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('product::products.create_script', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>

<?php echo $__env->make('backEnd.master', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\Modules/Product\Resources/views/products/create.blade.php ENDPATH**/ ?>