<style>
@reference "~/assets/css/main.css";

.hazard-background {
    @apply p-3;
    background-image: repeating-linear-gradient(-55deg,
            var(--color-accent),
            var(--color-accent) 20px,
            var(--color-info) 20px,
            var(--color-info) 40px,
            var(--color-warning) 40px,
            var(--color-warning) 60px);
}
</style>
<template>
    <div class="flex flex-col lg:flex-row justify-evenly items-center">
        <div class="flex flex-col justify-center items-center">
            <div class="avatar">
                <div class="w-56 md:w-78 lg:w-96 rounded-full">
                    <img src="/profile.webp" />
                </div>
            </div>
            <p class="text-center text-2xl my-6">Burak Yildirim | Software Engineer</p>
        </div>
        <div class="flex flex-col items-center max-w-4xl">
            <p class="text-center text-3xl my-6">Hi, I am Burak!</p>
            <p class="text-center text-xl mb-6">
                I go by <span class="font-extrabold italic">bydrim</span> online.
            </p>
            <p class="text-center text-xl mb-6">
                I am a Software Engineer with a strong background in developing complex business algorithms and managing
                large-scale financial systems. My experties lies in full-stack development with a focus on enterprise
                applications.
            </p>
            <p class="text-center text-xl mb-6">Based in Switzerland.</p>
            <p class="text-center text-xl">
                You can find me from the links below.
            </p>
            <p class="flex flex-row flex-wrap justify-center items-center gap-4 my-12">
                <a href="https://github.com/bydrim" target="_blank" rel="noopener noreferrer">
                    <button class="btn btn-accent py-6 rounded-4xl">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 fill-current" viewBox="0 0 496 512">
                            <path
                                d="M165.9 397.4c0 2-2.3 3.6-5.2 3.6-3.3.3-5.6-1.3-5.6-3.6 0-2 2.3-3.6 5.2-3.6 3-.3 5.6 1.3 5.6 3.6zm-31.1-4.5c-.7 2 1.3 4.3 4.3 4.9 2.6 1 5.6 0 6.2-2s-1.3-4.3-4.3-5.2c-2.6-.7-5.5.3-6.2 2.3zm44.2-1.7c-2.9.7-4.9 2.6-4.6 4.9.3 2 2.9 3.3 5.9 2.6 2.9-.7 4.9-2.6 4.6-4.6-.3-1.9-3-3.2-5.9-2.9zM244.8 8C106.1 8 0 113.3 0 252c0 110.9 69.8 205.8 169.5 239.2 12.8 2.3 17.3-5.6 17.3-12.1 0-6.2-.3-40.4-.3-61.4 0 0-70 15-84.7-29.8 0 0-11.4-29.1-27.8-36.6 0 0-22.9-15.7 1.6-15.4 0 0 24.9 2 38.6 25.8 21.9 38.6 58.6 27.5 72.9 20.9 2.3-16 8.8-27.1 16-33.7-55.9-6.2-112.3-14.3-112.3-110.5 0-27.5 7.6-41.3 23.6-58.9-2.6-6.5-11.1-33.3 2.6-67.9 20.9-6.5 69 27 69 27 20-5.6 41.5-8.5 62.8-8.5s42.8 2.9 62.8 8.5c0 0 48.1-33.6 69-27 13.7 34.7 5.2 61.4 2.6 67.9 16 17.7 25.8 31.5 25.8 58.9 0 96.5-58.9 104.2-114.8 110.5 9.2 7.9 17 22.9 17 46.4 0 33.7-.3 75.4-.3 83.6 0 6.5 4.6 14.4 17.3 12.1C428.2 457.8 496 362.9 496 252 496 113.3 383.5 8 244.8 8zM97.2 352.9c-1.3 1-1 3.3.7 5.2 1.6 1.6 3.9 2.3 5.2 1 1.3-1 1-3.3-.7-5.2-1.6-1.6-3.9-2.3-5.2-1zm-10.8-8.1c-.7 1.3.3 2.9 2.3 3.9 1.6 1 3.6.7 4.3-.7.7-1.3-.3-2.9-2.3-3.9-2-.6-3.6-.3-4.3.7zm32.4 35.6c-1.6 1.3-1 4.3 1.3 6.2 2.3 2.3 5.2 2.6 6.5 1 1.3-1.3.7-4.3-1.3-6.2-2.2-2.3-5.2-2.6-6.5-1zm-11.4-14.7c-1.6 1-1.6 3.6 0 5.9 1.6 2.3 4.3 3.3 5.6 2.3 1.6-1.3 1.6-3.9 0-6.2-1.4-2.3-4-3.3-5.6-2z">
                            </path>
                        </svg>
                        <span class="text-xl">Github</span>
                    </button>
                </a>
                <a href="https://www.linkedin.com/in/yildirim-burak/" target="_blank" rel="noopener noreferrer">
                    <button class="btn btn-info py-6 rounded-4xl">
                        <svg xmlns="http://www.w3.org/2000/svg" class="h-8 w-8 fill-current" viewBox="0 0 16 16">
                            <path
                                d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854zm4.943 12.248V6.169H2.542v7.225zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248S2.4 3.226 2.4 3.934c0 .694.521 1.248 1.327 1.248zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016l.016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225z">
                            </path>
                        </svg>
                        <span class="text-xl">LinkedIn</span>
                    </button>
                </a>
                <a href="https://stackoverflow.com/users/7711454/bydrim" target="_blank" rel="noopener noreferrer">
                    <button class="btn btn-warning py-6 rounded-4xl">
                        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50" class="h-10 w-10 fill-current"
                            fill-rule="evenodd">
                            <path fill-rule="evenodd"
                                d="M 40.925781 1.890625 L 37.859375 2.417969 L 41.1875 20.625 L 44.03125 20.253906 Z M 29.96875 6.351563 L 27.101563 8.078125 L 37.300781 23.035156 L 39.820313 21.480469 Z M 20.796875 15.03125 L 19.113281 17.703125 L 34.5 27 L 35.902344 24.578125 Z M 16.375 24.402344 L 15.628906 27.402344 L 33.359375 31.894531 L 33.640625 29.203125 Z M 9 29 L 9 47.984375 L 38.902344 48 L 38.902344 47.984375 C 38.933594 47.984375 39 29 39 29 L 36 29 L 36 45 L 12 45 L 12 29 Z M 15.152344 32.355469 L 14.902344 35.339844 L 33 37 L 33.203125 34.5 Z M 14.902344 39 L 15 42 L 33 41.929688 L 33 39 Z" />
                        </svg>
                        <span class="text-xl">Stackoverflow</span>
                    </button>
                </a>
            </p>
            <div class="h-6 bg-neutral-950 mb-6 w-full hazard-background"></div>
            <p class="text-center text-2xl font-bold mb-6">
                My website is under heavy development.
            </p>
            <progress class="progress progress-primary h-8 w-4/5 mb-6" value="75" max="100"></progress>
            <p class="text-center text-xl mb-6">
                %75 completed.
            </p>
            <div class="h-6 bg-neutral-950 mb-6 w-full hazard-background"></div>
        </div>
    </div>
</template>
