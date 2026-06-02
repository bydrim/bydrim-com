<script setup lang="ts">
useHead({
    script: [
        `document.documentElement.dataset.theme = localStorage.theme`
        + ` || (window.matchMedia("(prefers-color-scheme: light)").matches ? "${LIGHT_THEME}" : "${DARK_THEME}");`
    ],
});
</script>
<style>
@keyframes fadeIn {
    0% {
        opacity: 0;
    }

    100% {
        opacity: 1;
    }
}

#background {
    --fade-in: fadeIn 500ms ease-in-out
}

html {
    scroll-behavior: smooth;
}

/**
 * Disable smooth scrolling when reduced motion is preferred by the user
 */
@media screen and (prefers-reduced-motion: reduce) {
    html {
        scroll-behavior: auto;
    }
}
</style>
<template>
    <div id="background"
        class="transition-colors duration-200 fixed inset-0 z-1 block h-lvh blur-[3px] bg-[url(/bg.webp)] bg-no-repeat bg-fixed bg-cover bg-center bg-neutral animate-(--fade-in)">
    </div>
    <div id="background-cover"
        class="transition-colors duration-200 fixed inset-0 z-2 block h-lvh w-full bg-(--background-cover)">
    </div>
    <div id="foreground" class="transition-colors duration-200 absolute w-full z-9999 bg-transparent">
        <Navbar class="fixed top-0"></Navbar>
        <slot />
    </div>
</template>
