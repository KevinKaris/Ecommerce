
<form action="<?php echo e(route('company_information_update')); ?>" method="POST" enctype="multipart/form-data">
    <?php echo csrf_field(); ?>
    <div class="General_system_wrap_area">
        <div class="single_system_wrap">
            <div class="single_system_wrap_inner text-center">
                <div class="logo">
                    <span><?php echo e(__('general_settings.system_logo')); ?></span>
                </div>
                <div class="logo_img_div">
                    <img src="<?php echo e(showImage(app('general_setting')->logo?app('general_setting')->logo:'backend/img/default.png')); ?>" alt="" id="generalSettingLogo">
                </div>
                <div class="update_logo_btn">
                    <button type="button" class="primary-btn small fix-gr-bg ">
                        <input placeholder="<?php echo e(__('general_settings.upload_logo')); ?>" type="file" accept="image/*" name="site_logo" id="site_logo">
                        <?php echo e(__('general_settings.upload_logo')); ?>

                    </button>
                </div>

            </div>
            <div class="single_system_wrap_inner text-center">
                <div class="logo">
                    <span><?php echo e(__('general_settings.fav_icon')); ?></span>
                </div>

                <div class="logo_img_div" >
                    <img src="<?php echo e(showImage(app('general_setting')->favicon?app('general_setting')->favicon:'backend/img/default.png')); ?>" alt="" id="generalSettingFavicon">
                </div>

                <div class="update_logo_btn">
                    <button type="button" class="primary-btn small fix-gr-bg ">
                        <input placeholder="<?php echo e(__('general_settings.upload_logo')); ?>" type="file" accept="image/*" name="favicon_logo" id="favicon_logo">
                        <?php echo e(__('general_settings.upload_fav_icon')); ?>

                    </button>
                </div>

            </div>
            <div class="single_system_wrap_inner text-center">
                <div class="logo">
                    <span><?php echo e(__('general_settings.lazyload_image')); ?><small>(250px X 250px)</small></span>
                </div>

                <div class="logo_img_div" >
                    <img src="<?php echo e(showImage(themeDefaultImg())); ?>" alt="" id="generalSettingLazyloadImage">
                </div>

                <div class="update_logo_btn">
                    <button type="button" class="primary-btn small fix-gr-bg ">
                        <input placeholder="<?php echo e(__('general_settings.upload_lazyload_image')); ?>" type="file" accept="image/*" name="lazyload_image" id="lazyload_image">
                        <?php echo e(__('general_settings.lazyload_image')); ?>

                    </button>
                </div>

            </div>
            <?php if(isModuleActive('MultiVendor')): ?>
            <div class="single_system_wrap_inner text-center">
                <div class="logo">
                    <span><?php echo e(__('general_settings.shop_link_banner')); ?><small>(1920px X 350px)</small></span>
                </div>

                <div class="logo_img_div" >
                    <img height="100px" width="200px" src="<?php echo e(showImage(app('general_setting')->shop_link_banner?app('general_setting')->shop_link_banner:'backend/img/default.png')); ?>" alt="" id="shopLinkBanner">
                </div>

                <div class="update_logo_btn">
                    <button type="button" class="primary-btn small fix-gr-bg ">
                        <input placeholder="<?php echo e(__('general_settings.upload_logo')); ?>" type="file" accept="image/*" name="shop_link_banner" id="shop_link_banner">
                        <?php echo e(__('general_settings.upload_shop_link_banner')); ?>

                    </button>
                </div>

            </div>
            <?php endif; ?>
        </div>

        <div class="single_system_wrap">
            <div class="row">
                <div class="col-xl-12">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.system_title')); ?></label>
                        <input class="primary_input_field" placeholder="<?php echo e(__('general_settings.system_title')); ?>" type="text" id="site_title" name="site_title" value="<?php echo e($setting->site_title); ?>">
                    </div>
                </div>

                <div class="col-xl-12">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.file_supported')); ?> (<?php echo e(__('general_settings.include_comma_with_each_word')); ?>)</label>
                        <div class="tagInput_field">
                            <input class="sr-only"  type="text" id="file_supported" name="file_supported" value="<?php echo e($setting->file_supported); ?>" data-role="tagsinput" class="sr-only">
                        </div>
                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.system_default_language')); ?></label>
                        <select class="primary_select mb-25" name="language_code" id="language_code">
                            <?php $__currentLoopData = \Modules\Language\Entities\Language::where('status', 1)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $language): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($language->code); ?>" <?php if(app('general_setting')->language_code == $language->code): ?> selected <?php endif; ?>><?php echo e($language->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.date_format')); ?></label>
                        <select class="primary_select mb-25" name="date_format_id" id="date_format_id">
                            <?php $__currentLoopData = $dateformats; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $dateFormat): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($dateFormat->id); ?>" <?php if(app('general_setting')->date_format_id == $dateFormat->id): ?> selected <?php endif; ?>> (<?php echo e($dateFormat->normal_view); ?>)</option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.system_default_currency')); ?></label>
                        <select class="primary_select mb-25" name="currency_id" id="currency">
                            <?php $__currentLoopData = \Modules\GeneralSetting\Entities\Currency::where('status',1)->get(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $currency): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($currency->id); ?>" <?php if($setting->currency_code == $currency->code): ?> selected <?php endif; ?>><?php echo e($currency->name); ?> (<?php echo e($currency->code); ?>)</option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.time_zone')); ?></label>
                        <select class="primary_select mb-25" name="time_zone" id="time_zone_id">
                            <?php $__currentLoopData = $timezones; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $timeZone): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($timeZone->code); ?>" <?php if($setting->time_zone == $timeZone->code): ?> selected <?php endif; ?>><?php echo e($timeZone->time_zone); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_inpu mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.currency_symbol')); ?></label>
                        <input class="primary_input_field" placeholder="-" type="text" id="currency_symbol" name="currency_symbol" value="<?php echo e($setting->currency_symbol); ?>" readonly>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.currency_code')); ?></label>
                        <input class="primary_input_field" placeholder="-" type="text" id="currency_code" name="currency_code" value="<?php echo e($setting->currency_code); ?>" readonly>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.currency_symbol_position')); ?></label>
                        <select class="primary_select mb-25" name="currency_symbol_position" id="currency_symbol_position_id">
                            <option value="left" <?php echo e((app('general_setting')->currency_symbol_position == 'left')?'selected':''); ?>><?php echo e(__('menu.left')); ?> -> [ <?php echo e(app('general_setting')->currency_symbol); ?>20.20 ]</option>
                            <option value="left_with_space" <?php echo e((app('general_setting')->currency_symbol_position == 'left_with_space')?'selected':''); ?>><?php echo e(__('general_settings.left_with_space')); ?> -> [ <?php echo e(app('general_setting')->currency_symbol); ?> 20.20 ]</option>
                            <option value="right" <?php echo e((app('general_setting')->currency_symbol_position == 'right')?'selected':''); ?>><?php echo e(__('menu.right')); ?> -> [ 20.20<?php echo e(app('general_setting')->currency_symbol); ?> ]</option>
                            <option value="right_with_space" <?php echo e((app('general_setting')->currency_symbol_position == 'right_with_space')?'selected':''); ?>><?php echo e(__('general_settings.right_with_space')); ?> -> [ 20.20 <?php echo e(app('general_setting')->currency_symbol); ?> ]</option>
                        </select>

                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for="decimal_limit_id"><?php echo e(__('general_settings.decimal_number_limit')); ?></label>
                        <input class="primary_input_field" placeholder="0" type="number" id="decimal_limit_id" name="decimal_limit" step="0" min="0" value="<?php echo e(app('general_setting')->decimal_limit); ?>">
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('Default Country')); ?></label>
                        <select class="primary_select mb-25" name="default_country" id="default_country_id">
                            <option value=""><?php echo e(__('common.select_one')); ?></option>
                            <?php $__currentLoopData = $countries; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $country): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option <?php echo e($setting->default_country == $country->id?'selected':''); ?> value="<?php echo e($country->id); ?>"><?php echo e($country->name); ?></option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>

                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('Default State')); ?></label>
                        <select class="primary_select mb-25" name="default_state" id="default_state_id">
                            <option value=""><?php echo e(__('common.select_one')); ?></option>
                            <?php if($setting->country_id): ?>
                                <?php $__currentLoopData = $states; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $state): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option <?php echo e($setting->default_state == $state->id?'selected':''); ?> value="<?php echo e($state->id); ?>"><?php echo e($state->name); ?></option>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <?php endif; ?>
                        </select>

                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="primary_input mb-25">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.pwa_app_name')); ?><span class="text-danger">*</span></label>
                        <input class="primary_input_field" placeholder="-" type="text" id="pwa_app_name" name="pwa_app_name" value="<?php echo e(env('PWA_NAME','365-amazcart')); ?>" required>
                    </div>
                </div>

                <div class="col-xl-6">
                    <div class="primary_input">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.guest_checkout')); ?></label>
                        <ul id="theme_nav" class="permission_list sms_list ">
                            <li>
                                <label data-id="bg_option" class="primary_checkbox d-flex mr-12 extra_width">
                                    <input name="guest_checkout" id="guestcheckout_active" value="1" class="active" type="radio" <?php echo e((app('general_setting')->guest_checkout == 1)?'checked':''); ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <p><?php echo e(__('common.active')); ?></p>
                            </li>
                            <li>
                                <label data-id="color_option" class="primary_checkbox d-flex mr-12 extra_width">
                                    <input name="guest_checkout" id="guestcheckout_inactive" value="0" class="de_active" type="radio" <?php echo e((app('general_setting')->guest_checkout == 0)?'checked':''); ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <p><?php echo e(__('common.inactive')); ?></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.product_subtitle_show')); ?></label>
                        <ul id="theme_nav" class="permission_list sms_list ">
                            <li>
                                <label data-id="bg_option" class="primary_checkbox d-flex mr-12 extra_width">
                                    <input name="product_subtitle_show" id="product_subtitle_show_active" value="1" class="active" type="radio" <?php echo e((app('general_setting')->product_subtitle_show == 1)?'checked':''); ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <p><?php echo e(__('common.active')); ?></p>
                            </li>
                            <li>
                                <label data-id="color_option" class="primary_checkbox d-flex mr-12 extra_width">
                                    <input name="product_subtitle_show" id="product_subtitle_show_inactive" value="0" class="de_active" type="radio" <?php echo e((app('general_setting')->product_subtitle_show == 0)?'checked':''); ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <p><?php echo e(__('common.inactive')); ?></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.category_show_in_menu')); ?></label>
                        <ul id="theme_nav" class="permission_list sms_list ">
                            <li>
                                <label data-id="bg_option" class="primary_checkbox d-flex mr-12 extra_width">
                                    <input name="category_show_in_frontend" id="category_show_in_frontend_all" value="all" class="active" type="radio" <?php echo e((app('general_setting')->category_show_in_frontend == 'all')?'checked':''); ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <p><?php echo e(__('All categories')); ?></p>
                            </li>
                            <li>
                                <label data-id="color_option" class="primary_checkbox d-flex mr-12 extra_width">
                                    <input name="category_show_in_frontend" id="category_show_in_frontend_parent" value="parent" class="de_active" type="radio" <?php echo e((app('general_setting')->category_show_in_frontend == 'parent')?'checked':''); ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <p><?php echo e(__('Parent Categories')); ?></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="primary_input">
                        <label class="primary_input_label" for=""><?php echo e(__('general_settings.News letter subscription without email verification')); ?></label>
                        <ul id="theme_nav" class="permission_list sms_list ">
                            <li>
                                <label data-id="bg_option" class="primary_checkbox d-flex mr-12 extra_width">
                                    <input name="verify_on_newsletter" id="verify_on_newsletter_off" value="0" class="active" type="radio" <?php echo e((app('general_setting')->verify_on_newsletter == 0)?'checked':''); ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <p><?php echo e(__('common.yes')); ?></p>
                            </li>
                            <li>
                                <label data-id="color_option" class="primary_checkbox d-flex mr-12 extra_width">
                                    <input name="verify_on_newsletter" id="verify_on_newsletter_on" value="1" class="de_active" type="radio" <?php echo e((app('general_setting')->verify_on_newsletter == 1)?'checked':''); ?>>
                                    <span class="checkmark"></span>
                                </label>
                                <p><?php echo e(__('common.no')); ?></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <?php if(permissionCheck('company_information_update')): ?>
        <div class="submit_btn text-center mt-4">
            <button class="primary_btn_large" type="submit"> <i class="ti-check"></i> <?php echo e(__('common.save')); ?></button>
        </div>
    <?php endif; ?>
</form>
<?php /**PATH C:\xampp\htdocs\pomalo\Modules/GeneralSetting\Resources/views/page_components/general_settings.blade.php ENDPATH**/ ?>