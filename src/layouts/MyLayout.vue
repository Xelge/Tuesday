<template>
  <q-layout view="hHh lpR fff">
    <q-header reveal class="bg-dark text-white headd">
      <q-toolbar class="q-pa-none row  justify-center">
        <router-link to="/brands">
          <button class="text-subtitle1 q-px-xl">БРЕНДЫ</button>
        </router-link>
        <router-link to="/sponsorship">
          <button class="text-subtitle1 q-px-xl">СПОНСИРОВАНИЕ</button>
        </router-link>
      </q-toolbar>
    </q-header>

    <q-page-container>
      <router-view />
    </q-page-container>

    <q-footer class="bg-dark text-white">
      <q-toolbar>
        <div class="q-pa-xl offset-md-2  col-6 row">
            <div class="justify-start column col-4">
              <router-link to="/help">
                <button class="text-h5 q-pb-lg headd">Помощь</button>
              </router-link>
              <router-link to="/help">
                <button class="itemm">Как подать заявку</button>
              </router-link>
              <router-link to="/help">
              <button class="itemm">Частые вопросы</button>
            </router-link>
          </div>
          <div class="justify-start column col-4">
            <router-link to="/information">
              <button class="text-h5 q-pb-lg headd">Информация</button>
            </router-link>
            <router-link to="/information">
              <button class="itemm">О нас</button>
            </router-link>
            <router-link to="/information">
              <button class="itemm">Контакты</button>
            </router-link>
            <router-link to="/information">
              <button class="itemm">Как стать спонсором</button>
            </router-link>
            <router-link to="/information">
              <button class="itemm">Сотрудничество</button>
            </router-link>
          </div>
        </div>
        <router-link to="{name: 'error404'}" class="col-1">
          <svg width="74" height="65" viewBox="0 0 74 65" fill="none" xmlns="http://www.w3.org/2000/svg" class="col-1" onclick="">
            <g clip-path="url(#clip0)" filter="url(#filter0_d)">
              <path d="M36.9091 52.8125C46.3171 52.8125 42.9625 46.8596 43.6887 45.1479C43.6779 43.8696 43.667 42.64 43.7104 41.8925C44.3065 42.0604 45.7128 42.7727 48.6176 45.5948C53.1022 50.1177 54.2483 52.8125 57.8712 52.8125H64.5397C66.6533 52.8125 67.7534 51.9377 68.3035 51.2037C68.8346 50.4942 69.3548 49.2483 68.7858 47.3092C67.2982 42.64 58.6218 34.5773 58.0825 33.7269C58.1638 33.5698 58.2939 33.3612 58.3616 33.2529H58.3562C60.0687 30.9915 66.6045 21.2035 67.5664 17.2873C67.5691 17.2819 67.5719 17.2737 67.5719 17.2656C68.0921 15.4781 67.6152 14.319 67.122 13.6635C66.3796 12.6831 65.1982 12.1875 63.6022 12.1875H56.9336C54.7009 12.1875 53.0073 13.3115 52.1511 15.3617C50.7176 19.0044 46.691 26.4956 43.6725 29.1471C43.5803 25.3906 43.6427 22.5225 43.6914 20.391C43.789 16.2337 44.1033 12.1875 39.7868 12.1875H29.3057C26.6015 12.1875 24.0137 15.1396 26.8155 18.6442C29.2651 21.7154 27.6962 23.4271 28.2246 31.9475C26.1652 29.7402 22.5017 23.7792 19.9113 16.1606C19.1851 14.0996 18.0849 12.1902 14.9878 12.1902H8.31923C5.61497 12.1902 4 13.6635 4 16.1308C4 21.6721 16.2722 52.8125 36.9091 52.8125V52.8125ZM14.9878 16.2527C15.5758 16.2527 15.6354 16.2527 16.0716 17.4904C18.7244 25.2985 24.6749 36.8523 29.0212 36.8523C32.2864 36.8523 32.2864 33.5075 32.2864 32.2481L32.2837 22.2219C32.1048 18.9042 30.8963 17.2521 30.1024 16.25L39.6079 16.2608C39.6134 16.3069 39.5537 27.3515 39.635 30.0273C39.635 33.8271 42.6536 36.0046 47.3658 31.2379C52.338 25.629 55.7766 17.244 55.9148 16.9027C56.118 16.4152 56.2942 16.25 56.9336 16.25H63.6022H63.6293C63.6266 16.2581 63.6266 16.2662 63.6238 16.2744C63.0142 19.1181 56.996 28.1802 54.9827 30.9942C54.9502 31.0375 54.9203 31.0835 54.8905 31.1296C54.0045 32.5758 53.2837 34.1737 55.0125 36.4217H55.0152C55.1723 36.6112 55.5815 37.0554 56.1776 37.6729C58.0311 39.585 64.388 46.1229 64.9516 48.7229C64.5777 48.7825 64.1712 48.7392 57.8712 48.7527C56.5299 48.7527 55.4813 46.7485 51.4791 42.7131C47.8806 39.214 45.5448 37.784 43.4177 37.784C39.2882 37.784 39.589 41.1342 39.6269 45.1858C39.6404 49.5787 39.6134 48.1894 39.6432 48.4656C39.402 48.5604 38.711 48.75 36.9091 48.75C19.7162 48.75 8.51975 21.4744 8.08891 16.2608C8.23794 16.2473 10.2892 16.2554 14.9878 16.2527V16.2527Z" fill="white"/>
            </g>
            <defs>
              <filter id="filter0_d" x="0" y="0" width="73.0324" height="73" filterUnits="userSpaceOnUse" color-interpolation-filters="sRGB">
                <feFlood flood-opacity="0" result="BackgroundImageFix"/>
                <feColorMatrix in="SourceAlpha" type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 127 0"/>
                <feOffset dy="4"/>
                <feGaussianBlur stdDeviation="2"/>
                <feColorMatrix type="matrix" values="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.25 0"/>
                <feBlend mode="normal" in2="BackgroundImageFix" result="effect1_dropShadow"/>
                <feBlend mode="normal" in="SourceGraphic" in2="effect1_dropShadow" result="shape"/>
              </filter>
              <clipPath id="clip0">
                <rect width="65.0324" height="65" fill="white" transform="translate(4)"/>
              </clipPath>
            </defs>
          </svg>
        </router-link>
        <router-link to="{name: 'error404'}" class="col-1">
          <svg width="66" height="65" viewBox="0 0 66 65" fill="none" xmlns="http://www.w3.org/2000/svg" class="col-1">
            <path d="M41.4223 8H22.6723C14.0442 8 7.0473 14.9969 7.0473 23.625V42.375C7.0473 51.0031 14.0442 58 22.6723 58H41.4223C50.0504 58 57.0473 51.0031 57.0473 42.375V23.625C57.0473 14.9969 50.0504 8 41.4223 8ZM52.3598 42.375C52.3598 48.4062 47.4536 53.3125 41.4223 53.3125H22.6723C16.6411 53.3125 11.7348 48.4062 11.7348 42.375V23.625C11.7348 17.5938 16.6411 12.6875 22.6723 12.6875H41.4223C47.4536 12.6875 52.3598 17.5938 52.3598 23.625V42.375Z" fill="white"/>
            <path d="M32.0473 20.5C25.1442 20.5 19.5473 26.0969 19.5473 33C19.5473 39.9031 25.1442 45.5 32.0473 45.5C38.9504 45.5 44.5473 39.9031 44.5473 33C44.5473 26.0969 38.9504 20.5 32.0473 20.5ZM32.0473 40.8125C27.7411 40.8125 24.2348 37.3063 24.2348 33C24.2348 28.6906 27.7411 25.1875 32.0473 25.1875C36.3536 25.1875 39.8598 28.6906 39.8598 33C39.8598 37.3063 36.3536 40.8125 32.0473 40.8125Z" fill="white"/>
            <path d="M45.4848 21.228C46.4047 21.228 47.1505 20.4822 47.1505 19.5624C47.1505 18.6425 46.4047 17.8967 45.4848 17.8967C44.5649 17.8967 43.8192 18.6425 43.8192 19.5624C43.8192 20.4822 44.5649 21.228 45.4848 21.228Z" fill="white"/>
          </svg>
        </router-link>
        <router-link to="{name: 'error404'}" class="col-1">
          <svg width="65" height="65" viewBox="0 0 65 65" fill="none" xmlns="http://www.w3.org/2000/svg" class="col-1">
            <path d="M35.6239 58H27.6169C26.2794 58 25.1915 56.912 25.1915 55.5746V37.5143H20.52C19.1826 37.5143 18.0946 36.426 18.0946 35.0889V27.3501C18.0946 26.0126 19.1826 24.9247 20.52 24.9247H25.1915V21.0493C25.1915 17.2068 26.3981 13.9376 28.6804 11.5957C30.973 9.24321 34.177 8 37.9459 8L44.0525 8.00992C45.3876 8.01221 46.4737 9.10016 46.4737 10.4353V17.6207C46.4737 18.9581 45.3861 20.0461 44.049 20.0461L39.9376 20.0476C38.6837 20.0476 38.3644 20.299 38.2961 20.376C38.1836 20.5038 38.0497 20.8651 38.0497 21.8626V24.9243H43.7401C44.1684 24.9243 44.5835 25.03 44.9402 25.2291C45.7096 25.659 46.1879 26.4719 46.1879 27.3504L46.1849 35.0893C46.1849 36.426 45.0969 37.5139 43.7595 37.5139H38.0497V55.5746C38.0497 56.912 36.9613 58 35.6239 58V58ZM28.1227 55.0688H35.1181V36.2021C35.1181 35.309 35.8448 34.5827 36.7374 34.5827H43.2537L43.2563 27.8559H36.737C35.8444 27.8559 35.1181 27.1296 35.1181 26.2365V21.8626C35.1181 20.7174 35.2344 19.4151 36.0988 18.4362C37.1433 17.2529 38.7893 17.1164 39.9368 17.1164L43.5425 17.1148V10.9404L37.9436 10.9312C31.8866 10.9312 28.1227 14.8085 28.1227 21.0493V26.2365C28.1227 27.1292 27.3964 27.8559 26.5037 27.8559H21.0258V34.5827H26.5037C27.3964 34.5827 28.1227 35.309 28.1227 36.2021V55.0688ZM44.0468 10.9411H44.0471H44.0468Z" fill="white"/>
          </svg>
        </router-link>
      </q-toolbar>
    </q-footer>

  </q-layout>
</template>

<script>
export default {
  data () {
    return {
    }
  }
}
</script>

<style lang="scss">
  @import url('https://fonts.googleapis.com/css?family=Prosto+One|Rubik&display=swap&subset=cyrillic,latin-ext');
  .headd {
    font-family: 'Prosto One', cursive;
  }
  .itemm {
    font-family: 'Rubik', sans-serif;
    font-size: 18px;
  }
  svg {
    max-height: 65px;
  }
  button {
    background: none;
    color: white;
    border: none;
    cursor: pointer;
  }
  button:defined {
    border: 0px;
  }
  button:focus {
    outline: none !important;
    box-shadow: none !important;
    text-shadow: 0px 0px 10px rgba(255, 255, 255, 0.7);
  }
  button:active{
    outline: none !important;
    box-shadow: none !important;
  }
</style>
