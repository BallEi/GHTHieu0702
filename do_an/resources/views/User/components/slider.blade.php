<section class="sliders">
    <div class="aspect-ratio-169">
        @foreach($sliders as $slider)
        <img src="{{ $slider->image_path }}" alt="">
        @endforeach
    </div>
    <div class="dot-container">
        <div class="dot active"></div>
        <div class="dot"></div>
        <div class="dot"></div>
    </div>
</section>
