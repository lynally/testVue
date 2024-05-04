<template>
  <div id="app">
    <div id="nav">
      <router-link to="/">Home</router-link> |
      <router-link to="/about">About</router-link>
      <router-link to="/TestSlot">Slot</router-link>
    </div>
    <router-view />
    <div>
      <p class="foot">
        备案号：
        <a href="https://beian.miit.gov.cn/" target="_blank">
          冀ICP备2023002072号
      </a>
      </p>
    </div>
  </div>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
.foot {
  position: fixed;
  bottom: 50px;
  width: 100%;
  left: 0;
  text-align: center;
}
</style>
