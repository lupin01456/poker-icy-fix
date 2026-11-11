import { defineConfig } from "vitest/config";
import react from "@vitejs/plugin-react";
import path from "node:path";
import { loadEnv } from "vite";

const projectEnv = loadEnv("test", process.cwd(), "VITE_");
const publishableKey = projectEnv.VITE_SUPABASE_PUBLISHABLE_KEY ?? projectEnv.VITE_SUPABASE_ANON_KEY;
if (publishableKey) process.env.VITE_SUPABASE_PUBLISHABLE_KEY = publishableKey;

export default defineConfig({
  plugins: [react()],
  test: {
    environment: "jsdom",
    globals: true,
    setupFiles: ["./src/test/setup.ts"],
    include: ["src/**/*.{test,spec}.{ts,tsx}"],
  },
  resolve: {
    alias: { "@": path.resolve(__dirname, "./src") },
  },
});
