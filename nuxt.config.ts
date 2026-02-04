import tailwindcss from "@tailwindcss/vite";

export default defineNuxtConfig({
    compatibilityDate: '2025-07-15',
    devtools: { enabled: true },
    devServer: {
        port: 3030
    },
    css: ["./app/assets/css/main.css"],
    vite: {
        plugins: [
            tailwindcss(),
        ],
    },
})
