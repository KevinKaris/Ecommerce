<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title><?php if(trim($__env->yieldContent('title'))): ?> <?php echo $__env->yieldContent('title'); ?> | <?php echo e(app('general_setting')->meta_site_title); ?> <?php else: ?> <?php echo e(app('general_setting')->meta_site_title); ?> <?php endif; ?></title>
    <meta name="_token" content="<?php echo csrf_token(); ?>" />
    <?php $__env->startSection('share_meta'); ?>
        <?php echo $__env->yieldSection(); ?>
        
    <?php $config = (new \LaravelPWA\Services\ManifestService)->generate(); echo $__env->make( 'laravelpwa::meta' , ['config' => $config])->render(); ?>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="_token" content="<?php echo csrf_token(); ?>" />

    <link rel="shortcut icon" type="image/x-icon" href="<?php echo e(showImage(app('general_setting')->favicon)); ?>">
    <link rel="icon" href="<?php echo e(showImage(app('general_setting')->favicon)); ?>" type="image/png">

    <!-- CSS here -->
    <?php if(isRtl()): ?>
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('frontend/amazy/compile_css/rtl_app.css'))); ?>" />
    <?php else: ?>
    <link rel="stylesheet"  href="<?php echo e(asset(asset_path('frontend/amazy/compile_css/app.css'))); ?>" />
    <?php endif; ?>
    
    <?php
        $themeColor = Modules\Appearance\Entities\ThemeColor::where('status',1)->first();
        if($themeColor->id == 1){
            $themeColor = (object)[
                'background_color' => '#fff',
                'base_color' => '#fd4949',
                'text_color' => '#000b30',
                'feature_color' => '#fff',
                'footer_color' => '#000',
                'navbar_color' => '#fff',
                'menu_color' => '#f9f9fd',
                'border_color' => '#f1ece8',
                'success_color' => '#4BCF90',
                'warning_color' => '#E09079',
                'danger_color' => '#FF6D68'

            ];
        }
    ?>

    <style>
        :root {
            --background_color : <?php echo e($themeColor->background_color); ?>;
            --base_color : <?php echo e($themeColor->base_color); ?>;
            --text_color : <?php echo e($themeColor->text_color); ?>;
            --feature_color : <?php echo e($themeColor->feature_color); ?>;
            --footer_color : <?php echo e($themeColor->footer_color); ?>;
            --navbar_color : <?php echo e($themeColor->navbar_color); ?>;
            --menu_color : <?php echo e($themeColor->menu_color); ?>;
            --border_color : <?php echo e($themeColor->border_color); ?>;
            --success_color : <?php echo e($themeColor->success_color); ?>;
            --warning_color : <?php echo e($themeColor->warning_color); ?>;
            --danger_color : <?php echo e($themeColor->danger_color); ?>;
        }

        .toast-success {
            background-color: <?php echo e($themeColor->success_color); ?>!important;
        }
        .toast-error{
            background-color: <?php echo e($themeColor->danger_color); ?>!important;
        }
        .toast-warning{
            background-color: <?php echo e($themeColor->warning_color); ?>!important;
        }
            /*----------------------------------------------------*/


        .newsletter_form_wrapper .newsletter_form_inner .newsletter_form_thumb {
            height: 100%;
            background-image: url(<?php echo e(showImage($popupContent->image)); ?>);
            background-size: cover;
            background-position: center center;
            background-repeat: no-repeat;
        }
        .promotion_bar_wrapper{
            background-image: url(<?php echo e(showImage(@$promotionbar->image)); ?>)!important;
        }
        @media (max-width: 768px) {
            .newsletter_form_wrapper .newsletter_form_inner .newsletter_form_thumb {
                height: 100%!important;
            }
        }
        @media (max-width: 575.98px) {
            .fb_dialog_content iframe{
                bottom:60px!important;
            }
            .newsletter_form_wrapper .newsletter_form_inner {
                width: 400px!important;
            }
            .newsletter_form_wrapper .newsletter_form_inner .newsletter_form_thumb {
                height: 600px!important;
                opacity: .3;
            }
            .newsletter_form_wrapper .newsletter_form_inner .newsletter_form {
                padding: 50px 30px;
                position: absolute;
                top: 150px;
            }
        }
        @media (max-width: 395px) {
            .newsletter_form_wrapper .newsletter_form_inner {
                width: 385px!important;
            }
            .newsletter_form_wrapper .newsletter_form_inner .newsletter_form {
                top: 125px;
            }
            .message_div, .message_div_modal {
                min-height: 10px;
            }
        }
        @media (max-width: 375px) {
            .newsletter_form_wrapper .newsletter_form_inner {
                width: 345px!important;
            }
            .newsletter_form_wrapper .newsletter_form_inner {
                height: 550px!important;
            }
            .newsletter_form_wrapper .newsletter_form_inner .newsletter_form_thumb {
                height: 550px!important;
            }
        }
        @media  only screen and (max-width: 896px) and (max-height: 414px) {
            .newsletter_form_wrapper .newsletter_form_inner {
                height: 410px;
            }
        }
        @media  only screen and (max-width: 720px) and (max-height: 540px) {
            .newsletter_form_thumb{
                display: none!important;
            }
            .newsletter_form_wrapper .newsletter_form_inner {
                height: 335px;
                width: 600px;
            }
        }
        @media  only screen and (max-width: 653px) and (max-height: 280px) {
            .newsletter_form_wrapper .newsletter_form_inner {
                height: 335px;
                width: 600px;
            }
            .newsletter_form_wrapper .newsletter_form_inner .newsletter_form h3 {
                font-size: 20px;
            }
            .newsletter_form_wrapper .newsletter_form_inner .newsletter_form p {
                margin: 5px 0 5px;
            }
            .newsletter_form_wrapper .newsletter_form_inner .close_modal {
                top: 30px;
            }
        }

        @media  only screen and (max-width: 280px) and (max-height: 653px) {
            .newsletter_form_thumb{
                display: none!important;
            }
            .newsletter_form_wrapper .newsletter_form_inner {
                height: 400px!important;
                width: 260px!important;
            }
            #top_bar{
                display: none;
            }
            .newsletter_form_wrapper .newsletter_form_inner .newsletter_form {
                padding: 35px 10px;
                margin-top: 0px;
                top: 40px;
            } 
        }
    </style>

    <?php echo $__env->yieldPushContent('styles'); ?>

    <?php if(app('business_settings')->where('type', 'google_analytics')->first()->status == 1): ?>
          <!-- Global site tag (gtag.js) - Google Analytics -->
          <script async src="https://www.googletagmanager.com/gtag/js?id=<?php echo e(env('ANALYTICS_TRACKING_ID')); ?>"></script>

          <script>
              window.dataLayer = window.dataLayer || [];
              function gtag(){dataLayer.push(arguments);}
              gtag('js', new Date());
              gtag('config', '<?php echo e(env('ANALYTICS_TRACKING_ID')); ?>');
          </script>

          <!-- Google Analytics Code -->
           <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'google-analytics-4-measurement-protocol::components.google-analytics-client-id','data' => []]); ?>
<?php $component->withName('google-analytics-client-id'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
          <!-- </head> -->
    <?php endif; ?>

    <?php if(app('business_settings')->where('type', 'facebook_pixel')->first()->status == 1): ?>
          <!-- Facebook Pixel Code -->
          <script>
              !function(f,b,e,v,n,t,s)
              {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
              n.callMethod.apply(n,arguments):n.queue.push(arguments)};
              if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
              n.queue=[];t=b.createElement(e);t.async=!0;
              t.src=v;s=b.getElementsByTagName(e)[0];
              s.parentNode.insertBefore(t,s)}(window, document,'script',
              'https://connect.facebook.net/en_US/fbevents.js');
              fbq('init', <?php echo e(Modules\Setup\Entities\AnalyticsTool::where('type', 'facebook_pixel')->first()->facebook_pixel_id); ?>);
              fbq('track', 'PageView');
          </script>
          <noscript>
              <img height="1" width="1" style="display:none" src="https://www.facebook.com/tr?id=<?php echo e(Modules\Setup\Entities\AnalyticsTool::where('type', 'facebook_pixel')->first()->facebook_pixel_id); ?>/&ev=PageView&noscript=1"/>
          </noscript>
          <!-- End Facebook Pixel Code -->
    <?php endif; ?>

    <style>
        <?php if(auth()->check() && !auth()->user()->phone): ?>
            .dashboard_sidebar_wized .dashboard_sidebar_wized_user .user_desc .email_text::before {
                background: transparent!important;
            }
        <?php endif; ?>
    </style>

    <link rel="stylesheet" href="<?php echo e(asset(asset_path('css/custom.css'))); ?>">

    <script>
        const _config = <?php echo json_encode(collect(app('general_setting'))->only(['currency_symbol','decimal_limit','currency_symbol_position'])); ?>;
        const _user_currency = <?php echo json_encode(collect(app('user_currency'))->only(['symbol','convert_rate'])); ?>;
    </script>

</head><?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/partials/_head.blade.php ENDPATH**/ ?>