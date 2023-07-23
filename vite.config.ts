// vite.config.ts

import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';
export default defineConfig({
  plugins: [react()],
  server: {
    host: true, // Bind to all available network interfaces (inside the Docker container)
  },
}); 