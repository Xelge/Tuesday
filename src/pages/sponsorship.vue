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
      <q-card dark class="bg-dark my-card col-10 q-my-xl">
        <q-card-section>
          <div class="text-h6 bg-white text-black q-py-xs q-px-md card">OMERTA</div>
          <q-img
            class="card q-my-lg"
            src="https://placeimg.com/500/300/nature"
          />
        </q-card-section>
      </q-card>

      <q-card dark class="bg-dark my-card col-10 q-my-xl no-border">
        <q-card-section>
          <div class="text-h6 bg-white text-black q-py-xs q-px-md card">OMERTA</div>
          <q-img
            class="card q-my-lg"
            src="https://placeimg.com/500/300/nature"
          />
        </q-card-section>
      </q-card>

      <q-card dark class="bg-dark my-card col-10 q-my-xl">
        <q-card-section>
          <div class="text-h6 bg-white text-black q-py-xs q-px-md card">OMERTA</div>
          <q-img
            class="card q-my-lg"
            src="https://placeimg.com/500/300/nature"
          />
        </q-card-section>
      </q-card>
    </div>
  </div>

  <marquee behavior="alternate">
    YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ
    YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ
  </marquee>
</div>
</template>

<script>
export default {
  name: 'sponsorship'
}
</script>

<style lang="scss" scoped>
  @import url('https://fonts.googleapis.com/css?family=Prosto+One|Rubik:300i,400&display=swap');
* {
  background: #161616;
}
  .start {
    padding: 207px 0px 207px;
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

</style>
