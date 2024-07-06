<script setup lang="ts">
import { useCounterStore } from '@/stores/counter'

const counter = useCounterStore()

function clearCounter(){
  counter.clearCount()
}

function handleClick(){
  counter.increment()
}
</script>

<template>
<div class="min-h-[100vh] bg-neutral-800 flex justify-center items-center flex-col gap-4">
  <h1 class="text-neutral-100 text-3xl font-bold">Another View</h1>
  <div class="flex flex-col items-center gap-2">
    <p class="text-neutral-100">Number from your clicks: {{useCounterStore().count}}</p>
    <div class="flex gap-2">
      <button @click="clearCounter" class="px-4 py-2 bg-red-500/30 text-neutral-100 rounded">Clear the counter</button>
      <button @click="handleClick" class="px-4 py-2 bg-neutral-100/30 text-neutral-100 rounded">Click me!</button>
    </div>
  </div>
  <RouterLink to="/" class="text-neutral-100  px-4 py-2 border border-neutral-100/30 rounded">Go to Home</RouterLink>
</div>
</template>

<style scoped>

</style>
