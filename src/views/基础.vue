<template>
  <div>
    <h1>基础练习</h1>
    <h1>部署到服务求1</h1>
    <p :title="msg">{{ msg }}</p>
    <ul>
      <li v-for="obj in objs" :key="obj.id">
        {{ obj.name }}
      </li>
    </ul>
    <button @click="handeClick('點擊')">按鈕</button>
    <br>
    <input v-model="input_text" type="text" @keyup.enter="msg='keyup'">
    <p :[keyName]="keyName" @[keyName]="handleClickText(1,$event)">{{ input_text }}</p>
    <p>{{ calcValue }}</p>
    <p>{{ computer_attr }}</p>
  </div>
</template>

<script>
export default {
  name: '',
  data() {
    return {
      msg: 'hello world',
      objs: [{id: 1, name: 11}, {id: 2, name: 22}],
      input_text: '',
      keyName: 'click'
    }
  },
  computed: {
    calcValue() {
      return this.input_text + 'AAA'
    },
    computer_attr: {
      get: function() {
        return this.input_text + 'BBB'
      },
      set: function () {
        this.input_text = '设置 computer_attr的值'
      }
    }
  },
  watch: {
    input_text: function (newVal, oldVal) {
      this.msg = newVal
    }
  },
  created() {
    // setTimeout(() => {
    //   this.computer_attr = 'CCC'
    // }, 2000)
  },
  methods: {
    handeClick(val) {
      this.msg = this.msg.split(' ').reverse().join(' ')
    },
    handleClickText (attr, event) {
      debugger
      alert('动态属性绑定1')
    }
  }
}
</script>

<style scoped>

</style>
