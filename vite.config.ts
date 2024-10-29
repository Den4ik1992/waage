import { defineConfig } from 'vite'
    import react from '@vitejs/plugin-react'
    import { resolve } from 'path'
    import tailwindcss from 'tailwindcss'
    import autoprefixer from 'autoprefixer'
    
    export default defineConfig({
      plugins: [react()],
      css: {
        postcss: {
          plugins: [
            tailwindcss({
              content: ['./index.html', './src/**/*.{js,ts,jsx,tsx}'],
              theme: {
                extend: {},
              },
              plugins: [],
            }),
            autoprefixer,
          ],
        },
      },
    })
