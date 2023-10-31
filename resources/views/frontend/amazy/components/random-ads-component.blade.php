
<div class="amaz_cta_box {{$ads->status == 0?'d-none':''}} p-0 m-0">
    <div class="row justify-content-center p-0 m-0">
        <a href="{{@$ads->description}}" class="col-xl-12 random_ads_div p-0 m-0">
            <img class="img-fluid" src="{{showImage(@$ads->image)}}" alt="{{@$ads->description}}" title="{{@$ads->description}}">
        </a>
    </div>
</div>
        