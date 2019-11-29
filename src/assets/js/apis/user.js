import axios from "axios"
import {baseURL} from "../config.js"
import Qs from "qs"
var user={
  userReg:function(){
    return new Promise(function(resolve,reject){
      axios.post(
        baseURL+"/user/reg",
        Qs.stringify({
          uname:uname,
          password:password,
          phone:phone,
          email:email
        })      
      )
      .then(result=>{
        resolve(result.data);
      })
      .catch(err=>{
        reject(err);
      })
    })
  }
}
export {
  user
}