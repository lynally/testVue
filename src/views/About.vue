<template>
  <div class="about">
    <h1>This is an about page</h1>
    <input v-model="inputVal1">
    <input v-model="inputVal2">
    <p style=""  :data="data"></p>
  </div>
</template>
<script>
export default {
  name: 'About',
  components: {
  },
  data: function () {
    return {
      inputVal1: '',
      inputVal2: '',
    }
  },
  computed:{
    data(){
      const arr = []
      arr.push(this.inputVal1)
      arr.push(this.inputVal2)
      return JSON.stringify(arr)
    }
  },
  created() {
  },
  methods:{
    init(){
    },

  }
}
</script>
