<template>
  <div class="fixed-center text-center">
    <p>
      <img
        src="~assets/sad.svg"
        style="width:30vw;max-width:150px;"
      >
    </p>
    <p class="text-faded">Здесь ничего нет..<strong>(404)</strong></p>
    <q-btn
      color="dark"
      style="width:200px;"
      to="/"
      label="Назад"
    />
  </div>
</template>

<script>
export default {
  name: 'Error404'
}
</script>
