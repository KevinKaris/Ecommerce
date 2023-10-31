

<?php $__env->startSection('title'); ?>
    <?php echo e(__('Merchant Register')); ?>

<?php $__env->stopSection(); ?>
<?php $__env->startSection('content'); ?>
    <div class="amazy_login_area">
        <?php
            $loginPageInfo = \Modules\FrontendCMS\Entities\LoginPage::findOrFail(3);
        ?>
        <div class="amazy_login_area_left d-flex align-items-center justify-content-center">
            <div class="amazy_login_form">
                <a href="<?php echo e(url('/')); ?>" class="logo mb_50 d-block">
                    <img src="<?php echo e(showImage(app('general_setting')->logo)); ?>" alt="<?php echo e(app('general_setting')->company_name); ?>" title="<?php echo e(app('general_setting')->company_name); ?>">
                </a>
                <h3 class="m-0"><?php echo e(__('common.welcome')); ?>! <?php echo e(__('common.please')); ?> <br><?php echo e(__('defaultTheme.create_your_merchant_account')); ?></h3>
                <p class="support_text"><?php echo e(__('auth.See your growth and get consulting support!')); ?></p>
                <form id="registerForm" action="<?php echo e(route('frontend.merchant.store')); ?>" method="POST" class="register_form">
                    <?php echo csrf_field(); ?>
                    <div class="row">
                        <?php
                            $custom_field = [];
                            $default_field = [];
                        ?>
                        <?php if(!empty($row) && !empty($form_data)): ?>
                            <?php $__currentLoopData = $form_data; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $row): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php
                                    if($row->type != 'header' && $row->type !='paragraph'){
                                        if(property_exists($row,'className') && strpos($row->className, 'default-field') !== false){
                                            $default_field[] = $row->name;
                                        }else{
                                            $custom_field[] = $row->name;
                                        }
                                        $required = property_exists($row,'required');
                                        $type = property_exists($row,'subtype') ? $row->subtype : $row->type;
                                        $placeholder = property_exists($row,'placeholder') ? $row->placeholder : $row->label;
                                    }
                                ?>
                                <?php if($row->type =='header' || $row->type =='paragraph'): ?>
                                    <div class="col-lg-12">
                                        <<?php echo e($row->subtype); ?>><?php echo e($row->label); ?> </<?php echo e($row->subtype); ?>>
                                    </div>
                                <?php elseif($row->type == 'text' || $row->type == 'number' || $row->type == 'email' || $row->type == 'date'): ?>
                                    <div class="col-xl-12">
                                        <label class="primary_label2" for="<?php echo e($row->name); ?>"><?php echo e($row->label); ?> <?php if($required): ?> <span>*</span> <?php endif; ?> </label>
                                        <input <?php echo e($required ? 'required' :''); ?> type="<?php echo e($type); ?>" id="<?php echo e($row->name); ?>" name="<?php echo e($row->name); ?>" value="<?php echo e(old($row->name)); ?>" placeholder="<?php echo e($placeholder); ?>" class="<?php $__errorArgs = [$row->name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>">
                                        <?php $__errorArgs = [$row->name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                            <span class="text-danger" ><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                <?php elseif($row->type=='select'): ?>
                                    <?php if($row->name == 'account_type'): ?>
                                        <?php if(session()->has('pricing_id')): ?>
                                            <div class="col-xl-12 mb_25">
                                                <div class="form-group input_div_mb">
                                                    <label class="primary_label2 style4" for=<?php echo e($row->name); ?>><?php echo e($row->label); ?> <?php if($required): ?> <span>*</span> <?php endif; ?></label>
                                                    <select class="primary_input3 radius_3px style6 select_box" <?php echo e($required ? 'required' :''); ?> name="subscription_type" id="<?php echo e($row->name); ?>" autocomplete="off">
                                                        <?php $__currentLoopData = $row->values; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                            <option value="<?php echo e($value->value); ?>" <?php echo e(old($row->name) == $value->value? 'selected': ''); ?>><?php echo e($value->label); ?></option>
                                                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                    </select>
                                                </div>
                                                <span class="text-danger"><?php echo e($errors->first($row->name)); ?></span>
                                            </div>
                                        <?php endif; ?>
                                    <?php else: ?>
                                        <div class="col-xl-12 mb_25">
                                            <div class="form-group input_div_mb">
                                                <label class="primary_label2 style4" for=<?php echo e($row->name); ?>><?php echo e($row->label); ?><?php if($required): ?> <span>*</span> <?php endif; ?></label>
                                                <select class="primary_input3 radius_3px style6 select_box" <?php echo e($required ? 'required' :''); ?> name="<?php echo e($row->name); ?>" id="<?php echo e($row->name); ?>" autocomplete="off">
                                                    <?php $__currentLoopData = $row->values; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                        <option value="<?php echo e($value->value); ?>" <?php echo e(old($row->name) == $value->value? 'selected': ''); ?>><?php echo e($value->label); ?></option>
                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                </select>
                                            </div>
                                            <span class="text-danger"><?php echo e($errors->first($row->name)); ?></span>
                                        </div>
                                    <?php endif; ?>
                                <?php elseif($row->type == 'date'): ?>
                                    <div class="col-12 mb_30">
                                        <label class="primary_label2 style2 " for="start_datepicker"><?php echo e($row->label); ?> <?php if($required): ?> <span>*</span> <?php endif; ?></label>
                                        <input id="start_datepicker" <?php echo e($required ? 'required' :''); ?> type="<?php echo e($type); ?>" name="<?php echo e($row->name); ?>" value="<?php echo e(old($row->name)); ?>" placeholder="<?php echo e($placeholder); ?>" class="primary_input3 style4 mb-0 <?php $__errorArgs = [$row->name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?> is-invalid <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>">
                                        <?php $__errorArgs = [$row->name];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                        <span class="text-danger" ><?php echo e($message); ?></span>
                                        <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                                    </div>
                                <?php elseif($row->type=='textarea'): ?>
                                    <div class="col-12 mb_25">
                                        <label class="primary_label2 style2 " for=<?php echo e($row->name); ?>><?php echo e($row->label); ?><?php if($required): ?> <span>*</span> <?php endif; ?></label>
                                        <textarea <?php echo e($required ? 'required' :''); ?> name="<?php echo e($row->name); ?>" id="<?php echo e($row->name); ?>"  placeholder="<?php echo e($placeholder); ?>" class="primary_textarea4 radius_5px"><?php echo e(old($row->name)); ?></textarea>
                                    </div>
                                    <?php elseif($row->type=="radio-group"): ?>
                                    <div class="col-lg-12 form-group  mt-10 mb-10">
                                        <label for=""><?php echo e($row->label); ?></label>
                                        <div class="d-flex radio-btn-flex">
                                            <?php $__currentLoopData = $row->values; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <label class="primary_bulet_checkbox mr-10">
                                                    <input type="radio" name="<?php echo e($row->name); ?>" value="<?php echo e($value->value); ?>">
                                                    <span class="checkmark"></span>
                                                </label>
                                                <span class="mr-10"><?php echo e($value->label); ?></span>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    </div>
                                <?php elseif($row->type=="checkbox-group"): ?>
                                    <div class="col-lg-12 form-group mt-10 mb-10">
                                        <label><?php echo e(@$row->label); ?></label>
                                        <div class="checkbox">
                                            <?php $__currentLoopData = $row->values; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <label class="cs_checkbox mr-10">
                                                    <input  type="checkbox" name="<?php echo e($row->name); ?>[]" value="<?php echo e($value->value); ?>">
                                                    <span class="checkmark"></span>
                                                </label>
                                                <p class="mr-10"><?php echo e($value->label); ?></p>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    </div>

                                <?php elseif($row->type =='file'): ?>

                                    <div class="col-lg-6">
                                        <div class="customer_img">
                                            <label for=<?php echo e($row->name); ?>><?php echo e($row->label); ?><?php if($required): ?> <span class="text-danger">*</span> <?php endif; ?></label>
                                            <div class="form-group">
                                                <input type="<?php echo e($type); ?>" name="<?php echo e($row->name); ?>" id="<?php echo e($row->name); ?>" >
                                            </div>
                                        </div>
                                    </div>
                                <?php elseif($row->type =='checkbox'): ?>
                                    <div class="col-md-12">
                                        <div class="checkbox">
                                            <label class="cs_checkbox">
                                                <input id="policyCheck" type="checkbox" checked>
                                                <span class="checkmark"></span>
                                            </label>
                                            <p><?php echo $row->label; ?></p>
                                        </div>
                                    </div>
                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        <?php else: ?>
                            <?php if(session()->has('pricing_id')): ?>
                                <div class="col-xl-12 mb_25">
                                    <div class="form-group input_div_mb">
                                        <label class="primary_label2 style4" for=<?php echo e($row->name); ?>><?php echo e(__('Account Type')); ?> <span>*</span></label>
                                        <select class="primary_input3 radius_3px style6 select_box" name="subscription_type" autocomplete="off" disabled>
                                            <?php $__currentLoopData = $pricing_plans; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pricing_plan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <option value="<?php echo e($pricing_plan->id); ?>" <?php if(session()->get('pricing_id') == $pricing_plan->id): ?> selected <?php endif; ?>><?php echo e($pricing_plan->name); ?></option>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </select>
                                    </div>
                                    <span class="text-danger"><?php echo e($errors->first($row->name)); ?></span>
                                </div>
                            <?php endif; ?>
                            <div class="col-lg-12 mb_20">
                                <label class="primary_label2"><?php echo e(__('common.shop_name')); ?> <span>*</span></label>
                                <input type="text" name="name" id="Shop" value="<?php echo e(old('name')); ?>" placeholder="<?php echo e(__('common.shop_name')); ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo e(__('common.shop_name')); ?>'" class="primary_input3 radius_5px">
                                <?php $__errorArgs = ['name'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="text-danger" ><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                            <div class="col-lg-12 mb_20">
                                <label class="primary_label2"><?php echo e(__('common.email_address')); ?> <span>*</span></label>
                                <input type="email" id="email" name="email" value="<?php echo e(old('email')); ?>" placeholder="<?php echo e(__('common.email_address')); ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo e(__('common.email_address')); ?>'" class="primary_input3 radius_5px">
                                <?php $__errorArgs = ['email'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="text-danger" ><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                            <div class="col-lg-12 mb_20">
                                <label class="primary_label2"><?php echo e(__('common.phone_number')); ?> <span>*</span></label>
                                <input type="text" id="phone" name="phone" value="<?php echo e(old('phone')); ?>" placeholder="<?php echo e(__('common.phone_number')); ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo e(__('common.phone_number')); ?>'" class="primary_input3 radius_5px">
                                <?php $__errorArgs = ['phone'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="text-danger" ><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                            <div class="col-12 mb_20">
                                <label class="primary_label2" for="password"><?php echo e(__('common.password')); ?> <span>*</span></label>
                                <input type="password" id="password" name="password" value="<?php echo e(old('password')); ?>" placeholder="<?php echo e(__('common.password')); ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo e(__('common.password')); ?>'" class="primary_input3 radius_5px">
                                <?php $__errorArgs = ['password'];
$__bag = $errors->getBag($__errorArgs[1] ?? 'default');
if ($__bag->has($__errorArgs[0])) :
if (isset($message)) { $__messageOriginal = $message; }
$message = $__bag->first($__errorArgs[0]); ?>
                                    <span class="text-danger" ><?php echo e($message); ?></span>
                                <?php unset($message);
if (isset($__messageOriginal)) { $message = $__messageOriginal; }
endif;
unset($__errorArgs, $__bag); ?>
                            </div>
                            <div class="col-12 mb_20">
                                <label class="primary_label2" for="re_password"><?php echo e(__('common.confirm_password')); ?> <span>*</span></label>
                                <input type="password" id="re_password" name="password_confirmation" placeholder="<?php echo e(__('common.confirm_password')); ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo e(__('common.confirm_password')); ?>'" class="primary_input3 radius_5px">
                            </div>

                            <div class="col-12 mb_20">
                                <label class="primary_checkbox d-flex">
                                    <input checked="" type="checkbox" id="termCheck" checked value="1">
                                    <span class="checkmark mr_15"></span>
                                    <span class="label_name f_w_400 "><?php echo e(__('defaultTheme.by_signing_up_you_agree_to_terms_of_service_and_privacy_policy')); ?></span>
                                </label>
                            </div>
                            
                        <?php endif; ?>
                        <?php if(env('NOCAPTCHA_FOR_REG') == "true"): ?>
                        <div class="col-12 mb_20">
                            <?php if(env('NOCAPTCHA_INVISIBLE') != "true"): ?>
                            <div class="g-recaptcha" data-callback="callback" data-sitekey="<?php echo e(env('NOCAPTCHA_SITEKEY')); ?>"></div>
                            <?php endif; ?>
                            <span class="text-danger" ><?php echo e($errors->first('g-recaptcha-response')); ?></span>
                        </div>
                        <?php endif; ?>
                        <div class="col-12">
                            <?php if(env('NOCAPTCHA_INVISIBLE') == "true"): ?>
                        <button type="button" class="g-recaptcha amaz_primary_btn style2 radius_5px  w-100 text-uppercase  text-center mb_25" data-sitekey="<?php echo e(env('NOCAPTCHA_SITEKEY')); ?>" data-size="invisible" data-callback="onSubmit"><?php echo e(__('defaultTheme.register')); ?></button>
                        <?php else: ?>
                        <button type="submit" class="amaz_primary_btn style2 radius_5px  w-100 text-uppercase  text-center mb_25"  id="submitBtn"><?php echo e(__('defaultTheme.register')); ?></button>
                        <?php endif; ?>
                        </div>
                        <div class="col-12">
                            <p class="sign_up_text"><?php echo e(__('defaultTheme.already_a_merchant')); ?>  <a href="<?php echo e(route('seller.login')); ?>"><?php echo e(__('auth.Sign in')); ?></a></p>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="amazy_login_area_right d-flex align-items-center justify-content-center">
            <div class="amazy_login_area_right_inner d-flex align-items-center justify-content-center flex-column">
                <div class="thumb">
                    <img class="img-fluid" src="<?php echo e(showImage($loginPageInfo->cover_img)); ?>" alt="<?php echo e(isset($loginPageInfo->title)? $loginPageInfo->title:''); ?>" title="<?php echo e(isset($loginPageInfo->title)? $loginPageInfo->title:''); ?>">
                </div>
                <div class="login_text d-flex align-items-center justify-content-center flex-column text-center">
                    <h4><?php echo e(isset($loginPageInfo->title)? $loginPageInfo->title:''); ?></h4>
                    <p class="m-0"><?php echo e(isset($loginPageInfo->sub_title)? $loginPageInfo->sub_title:''); ?></p>
                </div>
            </div>
        </div>
    </div>
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<script>
    function onSubmit(token) {
        document.getElementById("registerForm").submit();
    }
</script>
<script>
    (function($){
        "use strict";
        $(document).ready(function(){
            $(document).on('click','#termCheck',function(event){

                if($("#termCheck").prop('checked') == true){
                    //do something
                    $('#submitBtn').prop('disabled', false);
                }else{
                    $('#submitBtn').prop('disabled', true);
                }
            });

            $('.select_box').niceSelect();
        });
    })(jQuery);
</script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('frontend.amazy.auth.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/pages/merchant_create_step_two.blade.php ENDPATH**/ ?>