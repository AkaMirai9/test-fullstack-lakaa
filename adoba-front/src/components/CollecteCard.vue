<template>
  <section class="p-4 rounded-lg shadow-lg bg-gray-50 w-80">
    <div class="h-96">
        {{ collecte.assos }}
    </div>
    <div>
      <p class="font-light text-gray-600">
        {{ collecte.date }}
      </p>
    </div>
  </section>
</template>

<script>

export default {
  props: {
    collecte: {
      type: Object,
      required: true
    }
  }
}
</script>
