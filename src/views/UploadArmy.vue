<template>
    <el-form  class="form" :model="ArmyData" :rules="rules" ref="ArmyData">

         <div className="test-1" style="display:flex;flex-direction:row;width:100%;justify-content:space-around;padding:50px">
             <el-form-item label="Kind"><el-input  size="medium" placeholder="Please Input" v-model="ArmyData.Kind" style="transform: skewX(-20deg);"> </el-input></el-form-item>
            <el-form-item label="Description" style="width:30%;" ><el-input  type="textarea"  :autosize="{ minRows: 4}" placeholder="Please input"  v-model="ArmyData.Description" style="width:100%;transform: skewX(-20deg);" ></el-input> </el-form-item>
        </div>

         <div className="test" style="display:flex;flex-direction:row;width:100%;justify-content:space-around">
                <el-form-item label="Strength"><el-input-number  v-model="ArmyData.Strength" label="Strength" :min="0" :max="10" style="transform: skewX(-20deg);"></el-input-number></el-form-item>
                <el-form-item label="Agility"><el-input-number v-model="ArmyData.Agility" label="Agility" :min="0" :max="10" large style="transform: skewX(-20deg);"></el-input-number></el-form-item>
                <el-form-item label="Intilligence"><el-input-number v-model="ArmyData.Intelligence"  :min="0" :max="10" style="transform: skewX(-20deg);"></el-input-number></el-form-item>
                <el-form-item label="Terrain" ><el-input v-model="ArmyData.Terrain" label="Terrain"  style="transform: skewX(-20deg);" ></el-input></el-form-item>

            </div>
               <div className="test" style="display:flex;flex-direction:row;width:50%;justify-content:space-between">
                <el-upload  style="border:dotted 1px white;display:grid;border-radius:5px;transform: skewX(-20deg);" ref="upload" action="" :auto-upload="false">
                  <!-- <el-button slot="trigger" size="large" type="primary">select file</el-button> -->
                  <i slot="trigger" style="color: white;font-size:50px " class="el-icon-plus temp"></i>
                  <div class="el-upload__tip" slot="tip">jpg/png files with a size less than 500kb</div>
                </el-upload>
                <el-input label="Types" v-model="ArmyData.Types" :disabled="true" :value="ArmyData.Types"  style="transform: skewX(-20deg);color:black,width:10%;">{{ArmyData.Types}}</el-input>
                </div>

            <el-form-item class="btn">
              <el-button type="primary" @click="submitForm('ArmyData')" style="margin:20px;">Upload</el-button>
               <el-button @click="resetForm('ArmyData')">Reset</el-button>
             </el-form-item>

    </el-form>
</template>

<script>
export default {
  name: 'Uploadamy',
  data () {
    return {
      ArmyData: {
        Kind: '',
        Description: '',
        Strength: 0,
        Agility: 0,
        Intelligence: 0,
        Types: '',
        Terrain: '',
        ArmyImage: '',
        dialogImageUrl: '',
        dialogVisible: false },
      rules: {
        Kind: [
          { required: true, message: 'Please input Army Kind name', trigger: 'blur' },
          { min: 3, message: 'Length should at least 3 characters', trigger: 'blur' }
        ],
        Description: [
          { required: true, message: 'Please input the description ', trigger: 'blur' }
        ],
        Strength: [
          { type: 'number', required: true, message: 'Please check it is not a number', trigger: 'change' },
          { min: '0', max: 10, message: 'Please betweent 0 to 10', trigger: 'change' }

        ],
        Agility: [
          { type: 'number', required: true, message: 'Please check it is not a number', trigger: 'change' },
          { min: '0', max: 10, message: 'Please betweent 0 to 10', trigger: 'change' }

        ],
        Intelligence: [
          { type: 'number', required: true, message: 'Please check it is not a number', trigger: 'change' },
          { min: '0', max: 10, message: 'Please betweent 0 to 10', trigger: 'change' }

        ]
      }
    }
  },
  mounted () {
    let length = this.$store.state.armyint.length
    let armytype = this.$store.state.armyint[length - 1]
    this.Types = armytype.Types
  },
  methods: {
    onImageSelected (event) {
      console.log('test')
      console.log(event)
    },
    handleRemove (file, fileList) {
      console.log(file, fileList)
    },
    handlePictureCardPreview (file) {
      this.dialogImageUrl = file.url
      this.dialogVisible = true
    },
    submitForm (formName) {
      try {
        this.$refs[formName].validate((valid) => {
          if (valid) {
            console.log(formName)
          } else {
            console.log('error submit!!')
            return false
          }
        })
      } catch (error) {
        alert(error)
      }
    },

    resetForm (formName) {
      try {
        this.$refs[formName].resetFields()
      } catch (error) {
        alert(error)
      }
    }
  }

}
</script>
<style lang="scss">
$maincolor:blue;
$maincolor2:green;
.form {
    height: 100%;
    width:100%;
    font-family: helvetica, sans-serif;
    align-items: center;
    background-image: url(../assets/images/mainbackground.png);
    background-position: center;
    background-size: cover;
    background-attachment: fixed;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    > h2{
      text-align: center;
      color:white
    }

    label {
      color: #fff;
      margin: 0 3% .25em;
      display: block;
      font-family: helvetica, sans-serif;
      font-weight: bold
    }

    }
    input {
      padding: .5em .25em;
      margin:  20px 0;
      border-radius:5px;
      font-size: 1.2em;
      border: 2px solid #000;
      outline: none;
      transform:(all, .25s);
      font-weight: 50px;

    }
    input:focus {
       border: 2px solid $maincolor;
    }

    button:focus,button:hover {
      background: $maincolor2;
    }

  .hide-show{
    width: 50%;
    margin: -3.62em 3% 0 1.5%;
    position: relative;
    z-index: 5;
    display: none;

  }
  #btn{
    position: fixed;
    bottom: 0;
    right: 0;
      button{
        margin:10px 20px;
        border-radius: 5px;
        transform: skewX(-20deg);
        cursor: pointer;
        font-weight: bold;
    }

  }
 textarea{
  width: 100%;
    }
   .el-input-number{
     >span {
       font-size: 1em;
       border-radius:5px;
       cursor: pointer;
       margin-top:20px

      }
   }

</style>
