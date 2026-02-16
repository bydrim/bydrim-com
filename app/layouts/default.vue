<script setup lang="ts">
import * as BydrimIcon from '~/assets/icons/bydrim.svg';

const darkTheme = "everforest-dark";
const lightTheme = "everforest-light";

useHead({
    script: [
        `document.documentElement.dataset.theme = localStorage.theme`
        + ` || (window.matchMedia("(prefers-color-scheme: light)").matches ? "${lightTheme}" : "${darkTheme}");`
    ],
});

const isLightTheme = ref(false);
onMounted(() => {
    let currentTheme = document.documentElement.dataset.theme;
    isLightTheme.value = currentTheme === lightTheme;

    watch(isLightTheme, () => {
        let theme = isLightTheme.value ? lightTheme : darkTheme;
        document.documentElement.dataset.theme = theme;
        localStorage.theme = theme;
    });
})
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

body * {
    @apply transition-colors duration-200;
}
</style>
<template>
    <div id="background"
        class="fixed inset-0 z-1 block blur-[3px] bg-[url(/bg.webp)] bg-no-repeat bg-fixed bg-cover bg-center bg-neutral animate-(--fade-in)">
    </div>
    <div id="background-cover" class="fixed inset-0 z-2 block h-full w-full bg-(--background-cover)"></div>
    <div id="foreground" class="absolute h-full w-full flex flex-col z-9999 bg-transparent">
        <div class="navbar shadow-md bg-transparent flex-none">
            <a href="/" class="mx-4">
                <BydrimIcon class="h-8 w-16 md:h-12 md:w-24 lg:h-16 lg:w-32 fill-current"></BydrimIcon>
            </a>
            <div class="flex-1"></div>
            <div class="flex-none">
                <ul class="menu menu-horizontal px-1 items-center">
                    <!-- <li><a href=""></a></li> -->
                    <li><a href="/projects" class="text-xl md:text-2xl lg:text-3xl">Projects</a></li>
                    <li>
                        <label class="swap swap-rotate">
                            <!-- 'checked=false' => swap-off -->
                            <!-- 'checked=true' => swap-on -->
                            <input type="checkbox" class="" value="" v-model="isLightTheme" />
                            <!-- v-model="isLightTheme" -->

                            <!-- sun icon -->
                            <svg class="swap-on h-6 w-6 md:h-8 md:w-8 lg:h-10 lg:w-10 fill-current"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path
                                    d="M5.64,17l-.71.71a1,1,0,0,0,0,1.41,1,1,0,0,0,1.41,0l.71-.71A1,1,0,0,0,5.64,17ZM5,12a1,1,0,0,0-1-1H3a1,1,0,0,0,0,2H4A1,1,0,0,0,5,12Zm7-7a1,1,0,0,0,1-1V3a1,1,0,0,0-2,0V4A1,1,0,0,0,12,5ZM5.64,7.05a1,1,0,0,0,.7.29,1,1,0,0,0,.71-.29,1,1,0,0,0,0-1.41l-.71-.71A1,1,0,0,0,4.93,6.34Zm12,.29a1,1,0,0,0,.7-.29l.71-.71a1,1,0,1,0-1.41-1.41L17,5.64a1,1,0,0,0,0,1.41A1,1,0,0,0,17.66,7.34ZM21,11H20a1,1,0,0,0,0,2h1a1,1,0,0,0,0-2Zm-9,8a1,1,0,0,0-1,1v1a1,1,0,0,0,2,0V20A1,1,0,0,0,12,19ZM18.36,17A1,1,0,0,0,17,18.36l.71.71a1,1,0,0,0,1.41,0,1,1,0,0,0,0-1.41ZM12,6.5A5.5,5.5,0,1,0,17.5,12,5.51,5.51,0,0,0,12,6.5Zm0,9A3.5,3.5,0,1,1,15.5,12,3.5,3.5,0,0,1,12,15.5Z" />
                            </svg>

                            <!-- moon icon -->
                            <svg class="swap-off h-6 w-6 md:h-8 md:w-8 lg:h-10 lg:w-10 fill-current"
                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path
                                    d="M21.64,13a1,1,0,0,0-1.05-.14,8.05,8.05,0,0,1-3.37.73A8.15,8.15,0,0,1,9.08,5.49a8.59,8.59,0,0,1,.25-2A1,1,0,0,0,8,2.36,10.14,10.14,0,1,0,22,14.05,1,1,0,0,0,21.64,13Zm-9.5,6.69A8.14,8.14,0,0,1,7.08,5.22v.27A10.15,10.15,0,0,0,17.22,15.63a9.79,9.79,0,0,0,2.1-.22A8.11,8.11,0,0,1,12.14,19.73Z" />
                            </svg>
                        </label>
                    </li>
                </ul>
            </div>
        </div>
        <main class="p-3 flex flex-col h-full overflow-y-auto">
            <slot />
        </main>
    </div>
</template>
