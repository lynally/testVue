/* eslint-disable */
<template>
  <div>
    <div class="cardWrap">
      <p>组件：{{ localInfo.name }}</p>
      <p>新属性：{{ localInfo.afterA }}</p>
      <button @click="changeName()">修改名称</button>
      <p></p>
    </div>
  </div>
</template>

<script>
export default {
  name: 'card',
  props: {
    info: {
      type: Object,
      require: true,
    }
  },
  data: function () {
    return {
      localInfo: {}
    }
  },
  watch: {
    // info: function (oldValue, newValue) {
    //   this.localInfo = Object.assign({},this.info)
    // },
    info :{
      handler: function () {
        this.info.afterA = this.info.name + Math.floor(Math.random()*1000)
        this.localInfo = Object.assign({},this.info)
      },
      deep: true

    }
  },
  created() {
    this.init()
  },
  methods: {
    init() {
      this.info.afterA = this.info.name + Math.floor(Math.random() * 1000)
      this.localInfo = Object.assign({}, this.info)
    },
    changeName() {
      // this.localInfo.name='修改后'
      // this.$emit('notice')

      // this.localInfo.afterA = '修改后'

      this.$emit('change', {value: '名字被修改',newValue:'111'})
    }
  }
}
</script>

<style type="text/css" scoped>
.cardWrap {
  width: 250px;
  height: 150px;
  border: 1px solid #ccc;
}

button {
}
</style>