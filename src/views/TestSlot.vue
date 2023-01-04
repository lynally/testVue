<template>
  <div>
    <TestSlot>
      <template #header="{user}">
        {{ user.age }}
      </template>
    </TestSlot>
  </div>
</template>

<script>
import TestSlot from './components/Iem_test_slot'
export default {
  name: 'ItemTestSlot',
  components: {TestSlot},
  data  () {
    return {
      firstName: '父名字',
      age: 11
    }
  }
}
</script>

<style scoped>

</style>
