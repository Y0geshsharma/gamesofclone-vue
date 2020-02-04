import Vue from 'vue'
import Vuex from 'vuex'
import Axios from 'axios'
Vue.use(Vuex)
export const store = new Vuex.Store({
  state: {
    armyint: [],
    DroidArmy: [],
    TroopersArmy: [],
    BattleResult: [],
    BattleHistory: []
  },
  actions: {
    getDroid ({ commit }) {
      Axios
        .get('http://localhost:3001/droid')
        .then(data => {
          let post = data.data
          commit('SET_DROID', post)
        })
        .catch(error => { console.Console.log(error) })
    },
    getTropper ({ commit }) {
      Axios
        .get('http://localhost:3001/troppers')
        .then(data => {
          let post = data.data
          commit('SET_TROPPER', post)
        })
        .catch(error => { console.Console.log(error) })
    },
    getResult ({ commit }) {
      Axios
        .get('http://localhost:3001/droid')
        .then(data => {
          let post = data.data
          commit('SET_RESULT', post)
        })
        .catch(error => { console.Console.log(error) })
    },
    getHistory ({ commit }) {
      Axios
        .get('http://localhost:3001/droid')
        .then(data => {
          let post = data.data
          commit('SET_HISTORY', post)
        })
        .catch(error => { console.Console.log(error) })
    }
  },
  mutations: {
    SET_DROID (state, data) {
      state.DroidArmy = data
    },
    SET_TROPPER (state, data1) {
      state.TroopersArmy = data1
    },
    SET_RESULT (state, data2) {
      state.BattleResult = data2
    },
    SET_HISTORY (state, data3) {
      state.BattleHistory = data3
    }
  }
})
