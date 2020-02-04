import Vue from 'vue'
import Axios from 'axios'
Vue.use(Axios)
// eslint-disable-next-line no-debugger
debugger
let getDroid = () => {
  Axios.get('http://localhost:3001/droid').then(res => {
    if (res != null) {
      getDroid = res
    }
  })
}
let gethistory = () => {
  Axios.get('http://localhost:3001/history').then(res => {
    if (res != null) {
      gethistory = res
    }
  })
}

let getresult = async () => {
  await Axios.get('http://localhost:3001/result').then(res => {
    if (res != null) {
      getresult = res
    }
  })
}

// let postresult = () => {

// }
// let posthistory = () => {

// }
// function postbattle (data) {
//   Axios.post('', data).then((_err, res) => {
//     if (_err) {
//       alert(_err)
//     }
//   })
// }

export default { getDroid, getTropper, gethistory, getresult }
