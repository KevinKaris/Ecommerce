    <div class="product_reviews_wrapper" id="customer_reviews">
        <div class="product_reviews_wrapper_head d-flex align-items-center justify-content-between">
            <h4 class="font_20 f_w_700 m-0"><?php echo e(__('review.customer_feedback')); ?></h4>
        </div>
        <div class="course_cutomer_reviews">
            <div class="course_feedback">
                <?php
                    $all_ratings = $all_reviews->pluck('rating');
                    if(count($all_ratings)>0){
                        $value = 0;
                        $rating = 0;
                        foreach($all_ratings as $review){
                            $value += $review;
                        }
                        $rating = $value/count($all_ratings);
                        $total_review = count($all_ratings);
                    }else{
                        $rating = 0;
                        $total_review = 1;
                    }
                    $five_stars = ($all_reviews->where('rating',5)->count() * 100)/$total_review;
                    $four_stars = ($all_reviews->where('rating',4)->count() * 100)/$total_review;
                    $three_stars = ($all_reviews->where('rating',3)->count() * 100)/$total_review;
                    $two_stars = ($all_reviews->where('rating',2)->count() * 100)/$total_review;
                    $one_stars = ($all_reviews->where('rating',1)->count() * 100)/$total_review;
                ?>
                <div class="course_feedback_left">
                    <h2><?php echo e(getNumberTranslate($rating)); ?></h2>
                    <div class="feedmak_stars">
                        <?php if (isset($component)) { $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Rating::class, ['rating' => $rating]); ?>
<?php $component->withName('rating'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931)): ?>
<?php $component = $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931; ?>
<?php unset($__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
                    </div>
                    <span><?php echo e(getNumberTranslate(count($all_ratings))); ?> <?php echo e(__('review.verified_ratings')); ?></span>
                </div>
                <div class="feedbark_progressbar">
                    <div class="single_progrssbar">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 70%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <div class="rating_percent d-flex align-items-center">
                            <div class="feedmak_stars d-flex align-items-center">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <span><?php echo e(getNumberTranslate($five_stars)); ?>%</span>
                        </div>
                    </div>
                    <div class="single_progrssbar">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <div class="rating_percent d-flex align-items-center">
                            <div class="feedmak_stars d-flex align-items-center">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                            <span><?php echo e(getNumberTranslate($four_stars)); ?>%</span>
                        </div>
                    </div>
                    <div class="single_progrssbar">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 20%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <div class="rating_percent d-flex align-items-center">
                            <div class="feedmak_stars d-flex align-items-center">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                            <span><?php echo e(getNumberTranslate($three_stars)); ?>%</span>
                        </div>
                    </div>
                    <div class="single_progrssbar">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <div class="rating_percent d-flex align-items-center">
                            <div class="feedmak_stars d-flex align-items-center">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                            <span><?php echo e(getNumberTranslate($two_stars)); ?>%</span>
                        </div>
                    </div>
                    <div class="single_progrssbar">
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                        <div class="rating_percent d-flex align-items-center">
                            <div class="feedmak_stars d-flex align-items-center">
                                <i class="fas fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                                <i class="far fa-star"></i>
                            </div>
                            <span><?php echo e(getNumberTranslate($one_stars)); ?>%</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="customers_reviews">
                <?php if(count($reviews) > 0): ?>
                    <?php $__currentLoopData = @$reviews; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $review): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="single_reviews flex-column">
                            <div class="single_reviews">
                                <div class="thumb">
                                    <?php if(@$review->customer->avatar != null): ?>
                                        <?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>

                                    <?php elseif($review->is_anonymous == 1): ?>
                                        <img src="<?php echo e(showImage('frontend/default/img/avatar.jpg')); ?>" alt="<?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>" title="<?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>"/>
                                    <?php else: ?>
                                        <img src="<?php echo e(showImage(@$review->customer->avatar)); ?>" alt="<?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>" title="<?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>"/>
                                    <?php endif; ?>
                                </div>
                                <div class="review_content w-100">
                                    <div class="review_content_head d-flex justify-content-between align-items-start flex-wrap">
                                        <div class="review_content_head_left">
                                            <h4 class="f_w_700 font_20" ><?php echo e($review->is_anonymous==1?'Unknown Name':@$review->customer->first_name.' '.@$review->customer->last_name); ?></h4>
                                            <div class="rated_customer d-flex align-items-center">
                                                <div class="feedmak_stars">
                                                    <?php
                                                        $rating = $review->rating;
                                                    ?>
                                                    <?php if (isset($component)) { $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Rating::class, ['rating' => $rating]); ?>
<?php $component->withName('rating'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931)): ?>
<?php $component = $__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931; ?>
<?php unset($__componentOriginal934cfa5825ea506eaf16463e5808eb3d488d3931); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
                                                </div>
                                                <span><?php echo e($review->updated_at->diffForHumans()); ?></span>
                                            </div>
                                        </div>
                                    </div>
                                    <p><?php echo e($review->review); ?></p>

                                    <?php if($review->images->count()): ?>
                                        <div class="review_file">
                                            <?php $__currentLoopData = $review->images; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $image): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                                <div class="review_img_div">
                                                    <img class="review_img" src="<?php echo e(showImage($image->image)); ?>" alt="">
                                                </div>
                                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                        </div>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <?php if(@$review->reply): ?>
                                <div class="single_reviews">
                                    <div class="thumb">
                                        <?php if(@$review->customer->avatar != null): ?>
                                            <?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>

                                        <?php elseif($review->is_anonymous == 1): ?>
                                            <img src="<?php echo e(showImage('frontend/default/img/avatar.jpg')); ?>" alt="<?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>" title="<?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>"/>
                                        <?php else: ?>
                                            <img src="<?php echo e(showImage(@$review->customer->avatar)); ?>" alt="<?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>" title="<?php echo e(\Illuminate\Support\Str::limit(@$review->customer->first_name,1,$end='')); ?><?php echo e(\Illuminate\Support\Str::limit(@$review->customer->last_name,1,$end='')); ?>"/>
                                        <?php endif; ?>
                                    </div>
                                    <div class="review_content">
                                        <div class="review_content_head d-flex justify-content-between align-items-start flex-wrap">
                                            <div class="review_content_head_left">
                                                <h4 class="f_w_700 font_20" ><?php echo e(@$review->seller->first_name); ?></h4>
                                                <div class="rated_customer d-flex align-items-center">
                                                    <span><?php echo e($review->reply->created_at->diffForHumans()); ?></span>
                                                </div>
                                            </div>
                                        </div>
                                        <p><?php echo e(@$review->reply->review); ?></p>
                                        
                                    </div>
                                </div>
                            <?php endif; ?>
                        </div>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                <?php else: ?>
                <p><?php echo e(__('defaultTheme.no_review_found')); ?></p>
                <?php endif; ?>
            </div>
        </div>

    </div>
    <div class="mb_30 mt_30">
        <?php if($reviews->lastPage() > 1): ?>
            <?php if (isset($component)) { $__componentOriginal1f64e456599d6b81c72c2606e4264cad43b02719 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\PaginationComponent::class, ['items' => $reviews,'type' => '']); ?>
<?php $component->withName('pagination-component'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginal1f64e456599d6b81c72c2606e4264cad43b02719)): ?>
<?php $component = $__componentOriginal1f64e456599d6b81c72c2606e4264cad43b02719; ?>
<?php unset($__componentOriginal1f64e456599d6b81c72c2606e4264cad43b02719); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
        <?php endif; ?>
    </div>


<?php /**PATH C:\xampp\htdocs\pomalo\resources\views/frontend/amazy/partials/_product_review_with_paginate.blade.php ENDPATH**/ ?>