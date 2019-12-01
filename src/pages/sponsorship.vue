<template>
<div>
  <div class="text-white text-center justify-center row">
    <div class="col-6 start">
      <div class="text-h3 q-pb-xl start-head">#GOSUPPORT</div>
      <div class="start-description">Голосуй за понравившуюся идею и поддержи<br>локальные бренды Петербурга!</div>
    </div>
  </div>

  <marquee behavior="alternate">
    YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ
    YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ
  </marquee>

  <div class="row justify-center">
    <div class="col-10">
      <q-card dark flat class="bg-dark my-card col-10 q-my-xl" v-for="(brand,index) in brands" :key="index">
        <q-card-section>
          <div class="text-h6 bg-white text-black q-py-xs q-px-md card">{{brand.name}}</div>
          <q-img
            class="card q-my-lg"
            :src="brand.headimage"
          />
          <div class="row">
            <q-btn outline rounded label="Подробнее" class="col-2" to="/brand_about" />
            <div class="votes col-2 offset-6 q-py-sm">37 голосов</div>
            <q-btn rounded color="white" text-color="black" label="Проголосовать" class="col-2"  />
          </div>
        </q-card-section>
      </q-card>
    </div>
  </div>

  <div class="text-white text-center justify-center row">
    <div class="col-6 start">
      <div class="text-h3 q-pb-lg start-head">СОЗДАЙ СВОЙ БРЕНД</div>
      <div class="start-description">Тоже хочешь создать свой бренд? Мы поможем найти<br>
        спонсоров для реализации твоей идеи! Отправляй заявку и, возможно, именно твой бренд увидит свет с помощью нашей команды.</div>
      <router-link to="/" class="justify-center row">
        <q-btn class="btn q-my-lg q-mx-lg" outline color="white" label="ОФОРМИТЬ ЗАЯВКУ" />
      </router-link>
    </div>
  </div>

  <marquee behavior="alternate">
    YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ
    YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ
  </marquee>
</div>
</template>

<script src="../router/massiv.js">
export default {
  name: 'sponsorship',
  data () {
    return {
      model: null,
      brand: null
    }
  }
}
</script>

<style lang="scss" scoped>
  @import url('https://fonts.googleapis.com/css?family=Prosto+One|Rubik:300i,400&display=swap');
* {
  background: #161616;
}
  .start {
    padding: 100px 0px 100px;
    &-head {
      font-family: Prosto One;
    }
    &-description {
      font-family: Rubik, cursive;
      font-style: italic;
      font-size: 24px;
    }
  }
  marquee {
    color: black;
    font-family: Rubik;
    font-style: italic;
    font-weight: bold;
    font-size: 24px;
    background: white;
  }
  .card {
    border-radius: 10px;
    font-family: Prosto One;
    max-height: 334px;
  }
  q-btn {
    font-size: 16px;
    color: white;
  }
  .votes {
    font-family: Rubik, serif;
    color: #686868;
    font-size: 24px;
  }
  .btn {
    font-family: Prosto One;
    font-size: 24px;
    display: flex;

    border-radius: 10px;
  }
  a {
    text-decoration: none;
  }
  .close {
    font-size: 24px;
    position: absolute;
    right: 25px;
    top: 25px;
    cursor: pointer;
    color: #fff;
  }
</style>
