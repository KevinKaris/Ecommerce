<head>

    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="icon" href="<?php echo e(asset(asset_path(app('general_setting')->favicon))); ?>" type="image/png" />
    <?php
        $current_url = url()->current();
        $getPath = str_replace(url('/'),'',$current_url);
        $getPath = \Str::replaceFirst('/','',$getPath);
        $getPath = str_replace('/',' ',$getPath);
        $getPath = str_replace('_',' ',$getPath);
        $getPath = str_replace('-',' ',$getPath);
        $path = \Str::title($getPath);
        
    ?>
    <title id="header_title"><?php echo $__env->yieldContent('page-title', app('general_setting')->site_title); ?> | <?php echo e($path); ?></title>
    <meta name="_token" content="<?php echo csrf_token(); ?>" />
    <?php $config = (new \LaravelPWA\Services\ManifestService)->generate(); echo $__env->make( 'laravelpwa::meta' , ['config' => $config])->render(); ?>
    <!-- Bootstrap CSS -->
    <?php if(isRtl()): ?>
        <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/rtl/bootstrap.rtl.min.css'))); ?>" />
    <?php else: ?>
        <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/bootstrap.min.css'))); ?>" />
    <?php endif; ?>
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/jquery-ui.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/jquery.data-tables.css'))); ?>">
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('fontawesome/css/all.css'))); ?>">
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/buttons.dataTables.min.css'))); ?>">
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/rowReorder.dataTables.min.css'))); ?>">
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/responsive.dataTables.min.css'))); ?>">
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/bootstrap-datepicker.min.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/bootstrap-datetimepicker.min.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/daterangepicker.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/font_awesome/css/all.min.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/text_editor/summernote-bs4.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/themefy_icon/themify-icons.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/flaticon.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/fnt.min.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/nice-select.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/magnific-popup.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/fastselect.min.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/css/toastr.min.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/select2/css/select2.min.css'))); ?>" />

    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/calender_js/core/main.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/calender_js/daygrid/main.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/calender_js/timegrid/main.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/calender_js/list/main.css'))); ?>" />
    <!-- color picker  -->
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/colorpicker.min.css'))); ?>" />

    
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/metisMenu.css'))); ?>" />

    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/loade.css'))); ?>" />

    <?php if(isRtl()): ?>
        <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/rtl/style.css'))); ?>" />
        <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/rtl/infix.css'))); ?>" />
    <?php else: ?>

        <?php if($adminColor->id == 1): ?>
            <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/backend_static_style.css'))); ?>" />
        <?php else: ?>
            <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/backend_style.css'))); ?>" />
        <?php endif; ?>
        <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/infix.css'))); ?>" />

    <?php endif; ?>

    <?php if($adminColor->id == 1): ?>
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/vendors_static_style.css'))); ?>" />
    <?php else: ?>
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/vendors_style.css'))); ?>" />
    <?php endif; ?>

    <link rel="stylesheet" type="text/css" href="<?php echo e(asset(asset_path('backend/vendors/spectrum-2.0.5/dist/spectrum.min.css'))); ?>">
    <!-- laraberg -->
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/laraberg/css/laraberg.css'))); ?>">
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/parsley.css'))); ?>" />

    <!-- uppy css -->
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/vendors/uppy/uppy.min.css'))); ?>">
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('/backend/css/backend_page_css/media.css'))); ?>">

    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/backend_global.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/preloader.css'))); ?>" />
    <link rel="stylesheet" href="<?php echo e(asset(asset_path('backend/css/solid_style.css'))); ?>" />
    <style>
        /* for toastr dynamic start*/
        .toast-success {
            background-color: <?php echo e($adminColor->success_color); ?>!important;
        }

        .toast-message {
            color: <?php echo e($adminColor->text_white); ?>;
        }

        .toast-title {
            color: <?php echo e($adminColor->text_white); ?>;

        }

        .toast {
            color: <?php echo e($adminColor->text_white); ?>;
        }

        .toast-error {
            background-color: <?php echo e($adminColor->danger_color); ?>!important;
        }

        .toast-warning {
            background-color: <?php echo e($adminColor->warning_color); ?>!important;
        }
    </style>
    <?php if(isRtl()): ?>
        <style>
            .demo_addons{
                float: left!important;
                margin-left: 30px!important;
            }    
        </style>
    <?php endif; ?>
    

    <?php $__env->startSection('styles'); ?>
    <?php echo $__env->yieldSection(); ?>
    <!-- jquery -->
    <script src="<?php echo e(asset(asset_path('backend/vendors/js/jquery-3.6.0.min.js'))); ?>"></script>

    <script>
        const _config = <?php echo json_encode(collect(app('general_setting'))->only(['currency_symbol','decimal_limit','currency_symbol_position'])); ?>;
        const _user_currency = <?php echo json_encode(collect(app('user_currency'))->only(['symbol','convert_rate'])); ?>;
    </script>

</head>
<?php /**PATH C:\xampp\htdocs\pomalo\resources\views/backEnd/partials/_head.blade.php ENDPATH**/ ?>