
<?php $__env->startSection('title'); ?>
    <?php echo e($content->mainTitle); ?>

<?php $__env->stopSection(); ?>
<style>
    .benefits_content > .container{
        width: 80%;
        margin-left: 50%;
        transform: translateX(-50%);
    }
</style>


<?php $__env->startPush('styles'); ?>
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('frontend/amazy/css/page_css/marchant.css'))); ?>" />
<?php $__env->stopPush(); ?>

<?php $__env->startSection('content'); ?>
    <!-- marcent top content -->
    <section class="marcent_content section_padding bg-white pb-0">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-9">
                    <div class="marcent_content_iner">
                        <h5><?php echo e($content->subTitle); ?></h5>
                        <?php echo $content->Maindescription; ?>
                        <a href="#register"
                            class="amaz_primary_btn style3 text-nowrap mt_40"><?php echo e(__('defaultTheme.become a merchant')); ?></a>
                        <span class="mt_20"><?php echo e($content->pricing); ?></span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- marcent top content end -->

    <!-- Benefits part -->
    <section class="benefits_content section_padding bg-white">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-6 col-md-10">
                    <div class="section_tittle">
                        <h2 class="mb_25"><?php echo e($content->benifitTitle); ?></h2>
                        <?php echo $content->benifitDescription; ?>
                    </div>
                </div>
            </div>
            <div class="row">

                <?php $__currentLoopData = $benefitList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="col-lg-3 col-sm-6">
                        <div class="single_benefits_content">
                            <div class="benefit_img_div">
                                <img src="<?php echo e(showImage($item->image)); ?>" alt="<?php echo e($item->title); ?>" title="<?php echo e($item->title); ?>">
                            </div>
                            <h4 class="f_w_700 font_16"><?php echo e($item->title); ?></h4>

                            <p><?php echo e($item->description); ?></p>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

            </div>
        </div>
    </section>
    <!-- Benefits part end -->

    <!-- work process part here -->
    <section class="work_process section_padding bg-white">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-6 col-md-10">
                    <div class="section_tittle">
                        <h2><?php echo e($content->howitworkTitle); ?></h2>
                        <?php echo $content->howitworkDescription; ?>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-10">

                    <div id="timeline">


                        <?php $__currentLoopData = $workProcessList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="timeline-item">
                                <div
                                    class="timeline-content work_process_single <?php echo e($item->position == 1 ? 'left_float' : 'right_float'); ?>">
                                    <div class="work_img_div">
                                        <img src="<?php echo e(showImage($item->image)); ?>" alt="<?php echo e($item->title); ?>" title="<?php echo e($item->title); ?>">
                                    </div>
                                    <h4 class="f_w_700 font_16"><?php echo e($item->title); ?></h4>
                                    <?php echo $item->description; ?>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- work process part end -->

    <!-- Benefits part -->
    <section class="pricing_part section_padding bg-white" id="register">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-6 col-md-10">
                    <div class="section_tittle">
                        <h2><?php echo e($content->sellerRegistrationTitle); ?></h2>
                        <?php echo $content->sellerRegistrationDescription; ?>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php
                    $total_commission = $commissions->where('status', 1)->count();
                    if($total_commission == 1){
                        $column = 'col-lg-4 offset-lg-4 col-md-6 offset-md-3';
                    }elseif($total_commission == 2){
                        $column = 'col-lg-4 offset-lg-1 col-md-6';
                    }else {
                        $column = 'col-lg-4 col-md-6';
                    }
                ?>
                <?php $__currentLoopData = $commissions->where('status', 1); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $commission): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div class="<?php echo e($column); ?>">
                        <div class="single_pricing_part <?php if($commission->id == 1): ?> product_tricker <?php endif; ?>">
                            <?php if($commission->id == 1): ?>
                                <span class="product_tricker_text">Best Value</span>
                            <?php endif; ?>
                            <div class="pricing_header">
                                <h5><?php echo e($commission->name); ?></h5>
                                <h2>
                                    <?php if($commission->id == 1): ?>
                                        <?php echo e(single_price($commission->rate)); ?>

                                    <?php endif; ?>
                                </h2>
                                <p><?php echo e($commission->description); ?></p>
                            </div>
                            <a href="<?php echo e(route('frontend.merchant-register', base64_encode($commission->id))); ?>"
                                class="amaz_primary_btn3 mb_20  w-100 text-center justify-content-center"><?php echo e(__('defaultTheme.choose_plan')); ?></a>
                        </div>
                    </div>
                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </section>
    <!-- Benefits part end -->

    <!-- accordion part here -->
    <section class="ferquently_question_part section_padding">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-6 col-md-10">
                    <div class="section_tittle">
                        <h2><?php echo e($content->faqTitle); ?></h2>
                        <?php echo $content->faqDescription; ?>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-10 col-xl-6">
                    <div class="ferquently_question_iner">

                        <?php $__currentLoopData = $faqList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <div class="single_ferquently_question">
                                <button class="accordion"><?php echo e($item->title); ?></button>
                                <div class="panel">
                                    <p><?php echo e($item->description); ?></p>
                                </div>
                            </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- accordion part end -->

    <!-- send query part here -->
    <section class="send_query section_padding">
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-6">
                    <div class="section_tittle">
                        <h2><?php echo e($content->queryTitle); ?></h2>
                        <?php echo $content->queryDescription ?>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-lg-10 col-xl-8">
                    <form action="#" id="contactForm" name="#" class="send_query_form">
                        <div class="row">
                            <div class="col-xl-12">
                                <input name="name" id="name" placeholder="<?php echo e(__('defaultTheme.enter_name')); ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo e(__('defaultTheme.enter_name')); ?>'"
                                    class="primary_line_input style4 mb_10" type="text">
                                <span class="text-danger" id="error_name"></span>
                            </div>
                            <div class="col-xl-12">
                                <input type="email" id="email" name="email" placeholder="<?php echo e(__('defaultTheme.enter_email_address')); ?>" onfocus="this.placeholder = ''" onblur="this.placeholder = '<?php echo e(__('defaultTheme.enter_email_address')); ?>'"
                                    class="primary_line_input style4 mb_10">
                                    <span class="text-danger" id="error_email"></span>
                            </div>
                            <div class="col-xl-12">
                                <select class="amaz_select2 style2 wide mb_30" name="query_type" id="query_type">
                                    <?php $__currentLoopData = $QueryList; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <option data-display="<?php echo e(__('defaultTheme.inquery_type')); ?>" value="<?php echo e($item->id); ?>"><?php echo e($item->name); ?></option>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </select>
                                <span class="text-danger" id="error_query_type"></span>
                            </div>
                            <div class="col-xl-12">
                                <textarea class="primary_line_textarea style4 mb_40" name="message" id="message" placeholder="<?php echo e(__('defaultTheme.write_messages')); ?>" onfocus="this.placeholder = ''"
                                    onblur="this.placeholder = '<?php echo e(__('defaultTheme.write_messages')); ?>'"></textarea>
                                    <span class="text-danger" id="error_message"></span>
                            </div>
                        </div>

                        <div class="send_query_btn">
                            <button id="contactBtn" type="submit"
                                class="amaz_primary_btn style3 text-nowrap"><?php echo e(__('defaultTheme.send_message')); ?></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- send query part end -->
<?php $__env->stopSection(); ?>

<?php $__env->startPush('scripts'); ?>
    <script>
        (function($) {
            "use strict";
            $(document).ready(function() {

                $('#contactForm').on('submit', function(event) {
                    event.preventDefault();
                    // console.log('ok')
                    $("#contactBtn").prop('disabled', true);
                    $('#contactBtn').text('<?php echo e(__('common.submitting')); ?>');

                    var formElement = $(this).serializeArray()
                    var formData = new FormData();
                    formElement.forEach(element => {
                        formData.append(element.name, element.value);
                    });
                    formData.append('_token', "<?php echo e(csrf_token()); ?>");

                    $.ajax({
                        url: "<?php echo e(route('contact.store')); ?>",
                        type: "POST",
                        cache: false,
                        contentType: false,
                        processData: false,
                        data: formData,
                        success: function(response) {
                            toastr.success(
                                "<?php echo e(__('defaultTheme.message_sent_successfully')); ?>",
                                "<?php echo e(__('common.success')); ?>");
                            $("#contactBtn").prop('disabled', false);
                            $('#contactBtn').text(
                                "<?php echo e(__('defaultTheme.send_message')); ?>");
                            resetErrorData();

                        },
                        error: function(response) {
                            $("#contactBtn").prop('disabled', false);
                            $('#contactBtn').text(
                                "<?php echo e(__('defaultTheme.send_message')); ?>");
                            showErrorData(response.responseJSON.errors)

                        }
                    });
                });


                $('#pricingToggle').on('change', function() {
                    this.value = this.checked ? 1 : 0;


                    if (this.value == 1) {
                        $('.monthly_price_div').addClass('d-none');
                        $('.yearly_price_div').removeClass('d-none');
                    }
                    if (this.value == 0) {
                        $('.yearly_price_div').addClass('d-none');
                        $('.monthly_price_div').removeClass('d-none');
                    }
                });

                function showErrorData(errors) {
                    $('#contactForm #error_name').text(errors.name)
                    $('#contactForm #error_email').text(errors.email)
                    $('#contactForm #error_query_type').text(errors.query_type)
                    $('#contactForm #error_message').text(errors.message)
                }

                function resetErrorData() {
                    $('#contactForm')[0].reset();
                    $('#contactForm #error_name').text('')
                    $('#contactForm #error_email').text('')
                    $('#contactForm #error_query_type').text('')
                    $('#contactForm #error_message').text('')
                }
            });
        })(jQuery);
    </script>
<?php $__env->stopPush(); ?>

<?php echo $__env->make('frontend.amazy.layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/pages/marchant.blade.php ENDPATH**/ ?>