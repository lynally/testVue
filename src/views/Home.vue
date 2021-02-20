/* eslint-disable */
<template>
  <div class="home">
    <p>测试父子组件传参</p>
      <card v-for="(item,index) in cardArr" :key="item.id"
            :info="item"
            @notice="print(item)"
            @change="changeName(index,item,$event)"
      >
      </card>
    <p v-for="(item) in cardArr" :key="item.name">{{item.name}}</p>
    <button @click="f_change()">修改</button>
  </div>
</template>

<script>
// @ is an alias to /src
import card from '@/views/components/card'

export default {
  name: 'Home',
  components: {
    card
  },
  data: function () {
    return {
      cardArr: []
    } 
  },
  created() {
    this.init()
  },
  methods:{ 
    init(){
      for (let index =0;index<2;index++) {
        const item = {
          id:index,
          name:'名称'+index,
        }
        this.cardArr.push(item)
      }
    },
    print(item){
      console.log('print:' ,item)
    },
    changeName(index,item,childValue){
      console.log(childValue.value)
      this.cardArr[index].name = childValue.value
    },
    f_change(){
      this.cardArr[0].name = '父修改值'
    }

  }
}
</script>
