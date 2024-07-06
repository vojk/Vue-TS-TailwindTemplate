<script setup lang="ts">
import {useCounterStore} from '@/stores/counter'

function handleClick(){
  useCounterStore().increment()
}

</script>

<template>
  <div class='min-h-[100vh] bg-neutral-800 flex justify-center items-center flex-col gap-12'>
    <div class='max-w-4xl w-full rounded border border-white/20 h-fit py-4 px-6'>
      <div class='mb-2'>
        <h1 class='text-3xl font-bold text-neutral-100'>Hello World!</h1>
      </div>
      <div>
        <p class='text-neutral-100'>This is a Tailwind CSS and TypeScript template for VueJS.</p>
        <p class='text-neutral-100'>For start edit <code>/src/views/HomeView.vue</code> and save!</p>
      </div>
      <div>
        <h2 class='text-2xl font-bold text-neutral-100 mt-4'>Features</h2>
        <ul class='text-neutral-100 list-disc list-inside'>
          <li>TypeScript</li>
          <li>ESLint</li>
          <li>Tailwind CSS</li>
          <li>PostCSS</li>
          <li>Dockerfile</li>
          <li>Vue Router for single page apps</li>
          <li>Pinia</li>
        </ul>
      </div>
      <div>
        <h2 class='text-2xl font-bold text-neutral-100 mt-4'>Scripts</h2>
        <ul class='text-neutral-100 list-disc list-inside'>
          <li>
            <code>npm run dev</code> - Start development server
          </li>
          <li>
            <code>npm run build</code> - Build for production
          </li>
          <li>
            <code>npm run lint</code> - Lint the code
          </li>
          <li>
            <code>npm run preview</code> - Preview production build
          </li>
          <li>
            <code>npm run format</code> - Format the code
          </li>
        </ul>
      </div>
    </div>
    <div class="flex flex-col content-center">
      <button @click='handleClick' class='mt-4 px-4 py-2 bg-neutral-100/30 text-neutral-100 rounded'>Click me!</button>
      <p class='text-neutral-100 mt-2'>Number of clicks: {{useCounterStore().count}}</p>
    </div>

    <div>
      <RouterLink to='/another' class='text-neutral-100 px-4 py-2 border border-neutral-100/30 rounded'>Go to Another View</RouterLink>
    </div>

    <div class='text-neutral-100/20 absolute bottom-2 text-center'>
      <p>Created by Vojtěch Tmej</p>
      <a href='https://github.com/vojk'>GitHub</a>
    </div>
  </div>
</template>
