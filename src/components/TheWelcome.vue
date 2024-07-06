<script setup lang="ts">
</script>

<template>
  <div className='min-h-[100vh] bg-neutral-800 flex justify-center items-center'>
    <div className='max-w-4xl w-full rounded border border-white/20 h-fit py-4 px-6'>
      <div className='mb-2'>
        <h1 className='text-3xl font-bold text-neutral-100'>Hello World!</h1>
      </div>
      <div>
        <p className='text-neutral-100'>This is a Tailwind CSS and TypeScript template for VueJS.</p>
        <p className='text-neutral-100'>For start edit <code>/src/views/HomeView.vue</code> and save!</p>
      </div>
      <div>
        <h2 className='text-2xl font-bold text-neutral-100 mt-4'>Features</h2>
        <ul className='text-neutral-100 list-disc list-inside'>
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
        <h2 className='text-2xl font-bold text-neutral-100 mt-4'>Scripts</h2>
        <ul className='text-neutral-100 list-disc list-inside'>
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
    <div className='text-neutral-100/20 absolute bottom-2 text-center'>
      <p>Created by Vojtěch Tmej</p>
      <a href='https://github.com/vojk'>GitHub</a>
    </div>
  </div>
</template>
