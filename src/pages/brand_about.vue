<template>
  <div class="brand-content row">
      <div class="col-10" v-for="(brand,index) in brands" :key="index">
        <h1>{{brand.name}}</h1>
        <div>{{brand.description}}</div>
        <q-btn class="btn q-my-lg q-mx-lg" outline color="black" label="ПРОГОЛОСОВАТЬ" />
        <q-btn flat round color="black" icon="close" />
      </div>
  </div>
</template>

<script src="../router/massiv.js">
export default {
  name: 'brand_about',
  data () {
    return {
      brand: null
    }
  }
}
</script>

<style scoped>

</style>
