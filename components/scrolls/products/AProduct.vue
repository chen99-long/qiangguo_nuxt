<template>
  <div
    class="relative animate-show custom-width text-[#000] sm:text-[#000] h-full flex justify-between items-start sm:pt-40 pt-14"
  >
    <div class="delay-500">
      <h2 class="sm:text-[50px] text-[22px] font-semibold mb-1 sm:mb-3">
        {{ $t("s4_1") }}
      </h2>
      <h3 class="delay-150 sm:text-[24px] text-[14px] font-normal">
        {{ $t("s4_1_1") }}
      </h3>
    </div>

    <Popover class="delay-500" :type="isMobile ? 'dialog' : 'popover'">
      <button
        class="rounded-full sm:border-[6px] border-[3px] sm:text-[33px] 2xl:text-[50px] text-[24px] border-[#FFE4C0] sm:border-[#F6EFE6] font-semibold sm:px-11 sm:py-2 px-4 py-1"
      >
        {{ $t("s45_btn") }}
      </button>
      <template #content>
        <div class="bg-black w-[120px] p-2 rounded-md">
          <img
            class="sm:rounded-md rounded-[3px]"
            src="/qr/wx.png"
            alt="二维码"
          />
          <span class="block text-white text-center text-sm mt-2">{{
            $t("scan_wx")
          }}</span>
        </div>
      </template>
    </Popover>
  </div>

  <picture>
    <source
      media="(max-width: 639px)"
      :srcset="'/productImg/window.jpg'"
    />
    <source
      media="(min-width: 640px)"
      :srcset="'/productImg/window.jpg'"
    />
    <img
      class="img-bg"
      :src="'/productImg/window.jpg'"
      alt="铝合金窗"
    />
  </picture>
</template>

<script setup>
import useImgHost from "~/hooks/useImgHost";
import Popover from "~/components/Popover.vue";
import { useIsMobile } from "@/hooks/useIsMobile";
const isMobile = useIsMobile();

const { makeImgHost } = useImgHost();
</script>
