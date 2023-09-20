import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  server: {
    // 外部公開
    host: '0.0.0.0',
    // 立ち上げる際のポートを変更できます。
    port: 5173
  }
})
