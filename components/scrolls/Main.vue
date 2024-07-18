<template>
  <div
    class="absolute top-1/2 -translate-y-[100%] left-1/2 -translate-x-1/2 text-white flex flex-col justify-center"
  >
    <div class="flex items-center justify-center sm:mb-7 mb-6">
      <h1
        class=" delay-700 font-semibold sm:text-lg text-sm sm:tracking-[3px] tracking-[2px]"
        >泰州市强国门窗制造有限公司</h1
      >

      

    </div>
   

    <h2
      class="animate-show custom-width sm:text-[26px] text-[26px] sm:leading-[56px] leading-[32px] font-semibold  text-center "
    >
    <div class="delay-[800ms]">门窗十五年沉淀</div>
      <div class="delay-[900ms]">只为了能做出</div>
      <div class="delay-[1000ms]">最好的靖江门窗</div>
    </h2>
    
  </div>

  <picture>
    <source
      media="(max-width: 639px)"
      width="750"
      height="1420"
      :srcset="
        makeImgHost(
          '/mobile/bg-1-20231127.jpg?imageMogr2/format/webp/quality/50/blur/3/resize/thumbnail/75x142'
        )
      "
    />
    <source
      media="(min-width: 640px)"
      width="1920"
      height="1080"
      :srcset="
        makeImgHost(
          '/bg1-20231212.jpg?imageMogr2/format/webp/quality/50/blur/3/resize/thumbnail/192x108'
        )
      "
    />
    <img
      class="img-bg"
      :src="
        makeImgHost(
          '/bg1-20231212.jpg?imageMogr2/format/webp/quality/50/blur/3/resize/thumbnail/192x108'
        )
      "
      alt="循光，自发光占位背景图片"
    />
  </picture>

  <picture>
    <source
      media="(max-width: 639px)"
      :srcset="makeImgHost('/mobile/bg-1-20231127.jpg?imageMogr2/format/webp')"
    />
    <source
      media="(min-width: 640px)"
      :srcset="makeImgHost('/bg1-20231212.jpg?imageMogr2/format/webp')"
    />
    <img
      class="img-bg"
      :src="makeImgHost('/bg1-20231212.jpg?imageMogr2/format/webp')"
      alt="循光，自发光背景图片"
    />
  </picture>
</template>

<script setup>
import useImgHost from "~/hooks/useImgHost";

const { makeImgHost } = useImgHost();
</script>
