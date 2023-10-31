<!-- sidebar part here -->

<nav id="sidebar" class="sidebar">
    <div class="sidebar-header update_sidebar">
        <a class="large_logo" href="<?php echo e(auth()->user()->role->type == 'seller' ? route('seller.dashboard') : route('admin.dashboard')); ?>">
            <img src="<?php echo e(showImage(app('general_setting')->logo)); ?>" alt="">
        </a>
        <a class="mini_logo" href="<?php echo e(auth()->user()->role->type == 'seller' ? route('seller.dashboard') : route('admin.dashboard')); ?>">
            <img src="<?php echo e(showImage(app('general_setting')->favicon)); ?>" alt="">
        </a>
        <a id="close_sidebar" class="d-lg-none">
            <i class="ti-close"></i>
        </a>
    </div>
    <?php
        \Modules\SidebarManager\Traits\SidebarTrait::latestSidebar();
        $sidebars = \Modules\SidebarManager\Entities\BackendmenuUser::with('children', 'backendMenu')->whereNull('parent_id')->where('user_id', auth()->id())->orderBy('position')->get();
    ?>
    <?php if($sidebars->count()): ?>
        <ul id="sidebar_menu">
            <?php $__currentLoopData = $sidebars; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $section): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <span class="menu_seperator">
                    <?php echo e(__(@$section->backendMenu->name)); ?>

                </span>
                <?php if($section->children->count()): ?>
                    <?php $__currentLoopData = $section->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $menu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php if(!@$menu->backendMenu->module or isModuleActive(@$menu->backendMenu->module)): ?>
                            <?php if(@$menu->backendMenu->route == 'payment_gateway.index' && auth()->user()->role->type == 'seller' && !app('general_setting')->seller_wise_payment): ?>
                                <?php continue; ?>
                            <?php elseif(permissionCheck(@$menu->backendMenu->route)): ?>
                                <li class="<?php echo e(spn_active_link(childrenRoute($menu))); ?>">
                                    <a href="
                                    
                                        <?php if(\Illuminate\Support\Facades\Route::has(@$menu->backendMenu->route) && !$menu->children->count()): ?>
                                            <?php if(@$menu->backendMenu->route == 'my-wallet.index'): ?>
                                                <?php if(auth()->user()->role->type == 'seller'): ?>
                                                    <?php echo e(route(@$menu->backendMenu->route, 'seller')); ?>

                                                <?php else: ?>
                                                    <?php echo e(route(@$menu->backendMenu->route, 'admin')); ?>

                                                <?php endif; ?>
                                            <?php else: ?>
                                                <?php echo e(route(@$menu->backendMenu->route)); ?>

                                            <?php endif; ?>
                                             
                                         <?php else: ?> 
                                            javascript:void(0) 
                                         <?php endif; ?>" class="<?php if($menu->children->count()): ?> has-arrow <?php endif; ?>" aria-expanded="false">
                                        <div class="nav_icon_small">
                                            <span class="<?php echo e(@$menu->backendMenu->icon?@$menu->backendMenu->icon:'fas fa-users'); ?>"></span>
                                        </div>
                                        <div class="nav_title">
                                            <span><?php echo e(__($menu->backendMenu->name)); ?></span>
                                            
                                        </div>
                                    </a>
                                    <?php if($menu->children->count()): ?>
                                        <ul class="mm-collapse">
                                            <?php $__currentLoopData = $menu->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $submenu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <?php if(app('theme')->folder_path == 'amazy'): ?>
                                                    <?php if(@$submenu->backendMenu->route == 'frontendcms.features.index' || @$submenu->backendMenu->route == 'frontendcms.about-us.index'): ?>
                                                        <?php continue; ?>
                                                    <?php endif; ?>
                                                <?php elseif(app('theme')->folder_path == 'default'): ?>
                                                    <?php if(@$submenu->backendMenu->route == 'frontendcms.ads_bar.index' || @$submenu->backendMenu->route == 'frontendcms.promotionbar.index' || @$submenu->backendMenu->route == 'frontendcms.login_page'): ?>
                                                        <?php continue; ?>
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                                <?php if(!@$submenu->backendMenu->module or isModuleActive(@$submenu->backendMenu->module)): ?>
                                                    <?php if(permissionCheck($submenu->backendMenu->route)): ?>
                                                    
                                                        <li>
                                                            <a href="
                                                                <?php if(\Illuminate\Support\Facades\Route::has($submenu->backendMenu->route) && !$submenu->children->count()): ?>
                                                                    <?php if(@$submenu->backendMenu->route == 'my-wallet.index'): ?>
                                                                        <?php if(auth()->user()->role->type == 'seller'): ?>
                                                                            <?php echo e(route(@$submenu->backendMenu->route, 'seller')); ?>

                                                                        <?php else: ?>
                                                                            <?php echo e(route(@$submenu->backendMenu->route, 'admin')); ?>

                                                                        <?php endif; ?>
                                                                    
                                                                    <?php else: ?>
                                                                        <?php echo e(route(@$submenu->backendMenu->route)); ?>

                                                                    <?php endif; ?>
                                                                <?php else: ?> 
                                                                    javascript:void(0)
                                                                <?php endif; ?>" class="<?php echo e(spn_active_link(childrenRoute($submenu), 'active')); ?> <?php if(@$submenu->children->count()): ?> has-arrow <?php endif; ?>"><?php echo e(__(@$submenu->backendMenu->name)); ?></a>
                                                            <?php if(@$submenu->children->count()): ?>
                                                                <ul class="metis_submenu">
                                                                    <?php $__currentLoopData = $submenu->children; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $subsubmenu): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                                        <li>
                                                                            <a href="<?php if(\Illuminate\Support\Facades\Route::has(@$subsubmenu->backendMenu->route)): ?> <?php echo e(route(@$subsubmenu->backendMenu->route)); ?> <?php else: ?> javascript:void(0) <?php endif; ?>"> <?php echo e(__(@$subsubmenu->backendMenu->name)); ?></a>
                                                                        </li>
                                                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                                                </ul>
                                                            <?php endif; ?>
                                                        </li>
                                                        
                                                    <?php endif; ?>
                                                <?php endif; ?>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </ul>
                                    <?php endif; ?>
                                </li>
                            <?php endif; ?>
                        <?php endif; ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                <?php endif; ?>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

        </ul>
    <?php endif; ?>

</nav>
<!-- sidebar part end -->
<?php /**PATH C:\xampp\htdocs\pomalo\resources\views/backEnd/partials/_sidebar.blade.php ENDPATH**/ ?>