<template>
  <div class="q-pa-none">
    <q-layout>
      <q-page-container>
        <q-page>
           <div class="gif flex justify-center">
               <span class="head" id="go">GO</span>
               <span id="header1" class="head">YOUNGZTERZ <span class="head" id="header2">YOUNGZTERZ</span></span>
               <span class="head" id="sup">SUPPORT</span>
           </div>
        </q-page>
      </q-page-container>
          <marquee behavior="alternate">YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ
            YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ YOUNGZTERZ
          </marquee>
      <q-page-container>
        <q-page>
          <div class="who">
            <div class="q-py-lg text-h4 flex justify-center"> КТО МЫ?</div>
            <div class="description text-h6 q-pt-lg">
              <span class="text-purple-7 youngzterz">Youngzterz</span> – это сервис, созданный для продвижения<br> уличных брендов
              молодёжной одежды<br> Санкт-Петербурга.
            </div>
          </div>
          <div class="brands">
            <div class="q-py-lg text-h4 flex justify-center"> НАШИ БРЕНДЫ</div>
          </div>
        </q-page>
      </q-page-container>
    </q-layout>
  </div>
</template>
<script>
export default {
  name: 'Home'
}
</script>

<style scoped>
  * {
    background-color: black;
  }
  .gif {
    background-image: linear-gradient(to bottom, #161616 0%, transparent 100%), url("../assets/MOSHED-2019-11-30-14-31-9.gif");
    position: absolute;
    width: auto;
    background-size: cover;
    background-repeat: no-repeat;
    height: 100%;
  }

  .head{
    margin: 0%;
    padding: 0;
    font-family: Rubik;
    font-style: italic;
    font-size: 108px;
    line-height: 130px;
    background: none;
    justify-content: center;
    display: flex;
  }
  #header1 {
    font-weight: bold;
    color: black;
    ;
  }
  #header2 {
    font-weight: lighter;
    margin-left: -50.5%;
    -webkit-text-stroke: 1px white;
    color: rgba(13,123,123, 0);
  }

  #go {
    font-style: normal;
    letter-spacing: 0.3em;
    font-size: 30px;
    color: white;
  }
  #sup {
    font-style: normal;
    letter-spacing: 0.3em;
    font-size: 30px;
    color: white;
  }
  marquee {
    color: black;
    font-family: Rubik;
    font-style: italic;
    font-weight: bold;
    font-size: 24px;
    background: white;
  }
  .who {
    font-size: 36px;
    font-family: Prosto One;
    color: white;
    margin-top: 5%;
  }
  q-page {
    background: black;
  }
  .description {
    margin: 0 10%;
    text-align: center;
  }
  .youngzterz {
    font-style: italic;
  }
</style>
