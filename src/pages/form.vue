<template>
    <div class="body">
      <div class="row flex justify-center">
        <div class="col-8">
            <q-card class="my-card q-py-md q-my-lg">
              <q-card-section class="row">
                <div class="row flex justify-between">
                  <div class="col">
                    <div class="subtitle q-my-sm">Заполните форму</div>
                      <div class="q-my-sm">
                          <form class="q-gutter-sm">
                            <div class="text">*Ваше имя
                              <div class="q-gutter-sm">
                                <input class="input q-pa-sm" v-model="name" maxlength="25" label="Ваше имя" />
                              </div>
                            </div>
                            <div class="text">*E-mail
                              <div class="q-gutter-sm">
                                <input class="input q-pa-sm" v-model="email" maxlength="25" label="Ваш E-mail" />
                              </div>
                            </div>
                            <div class="text">*Название будущего бренда
                              <div class="q-gutter-sm">
                                <input class="input q-pa-sm" v-model="brand" maxlength="25" label="Название бренда" />
                              </div>
                            </div>
                            <div class="text">Вы также можете добавить до 5 фото своих наработок:
                                <div class="q-gutter-sm row items-start">
                                  <input
                                    class="input q-pa-sm"
                                    @input="val => { files = val }"
                                    multiple
                                    type="file"
                                  />
                                </div>
                            </div>
                        </form>
                      </div>
                  </div>
                  <div class="col-7 tocol flex justify-center">
                        <div class="text">*Опишите свою идею
                          <div class="q-gutter-lg q-pt-md">
                            <textarea class="input area q-pa-sm" maxlength="395"/>
                          </div>
                        </div>
                    <q-btn class="btn" label="ОТПРАВИТЬ ЗАЯВКУ" />
                  </div>
                </div>
              </q-card-section>
            </q-card>
        </div>
      </div>
    </div>
</template>

<script>
export default {
  name: 'brands',
  data () {
    return {
      name: null,
      email: null,
      brand: null,
      files: null
    }
  }
}
</script>

<style scoped>
  .body {
    background-color: #161616;
  }
  .btn {
    outline: none;
    border: 2px solid #000000;
    font-family: Rubik;
    font-size: 16px;
    font-weight: bold;
    border-radius: 10px;
  }
  .tocol {
    margin-top: 30px;
  }
  .my-card {
    background: #FFFFFF;
  }
  .col {
    margin: 0 5%;
  }
  .subtitle {
    font-size: 24px;
    font-family: Rubik;
    font-weight: bold;
  }
  .input {
    background: rgba(132, 59, 146, 0.3);
    border-radius: 10px;
    border: none;
    outline: none;
    width: 320px;
    margin-top: 5%;
  }
  .area {
    width: 430px;
    height: 300px;
  }
  .text {
    font-family: Rubik;
    font-size: 18px;
    font-weight: bold;
    margin: 5%;
  }
</style>
