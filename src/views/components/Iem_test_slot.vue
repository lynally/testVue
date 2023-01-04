<template>
  <span>
    <slot name="header" :user="user">
      {{ user.lastName }}
    </slot>
  </span>
</template>

<script>
export default {
  name: 'TestSlot',
  data () {
    return {
      user: {
        lastName: '子名字',
        age: 18
      }
    }
  }
}
</script>

<style scoped>

</style>
