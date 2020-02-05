<template>
<el-table :data="hdata" height="680" style="width: 100%" >
    <el-table-column prop="slnumber" label="slnumber" width="180"> </el-table-column>
    <el-table-column  prop="winner"  label="winner" width="180"> </el-table-column>
    <el-table-column  prop="TotalBattlePoint" label="TotalBattlePoint">  </el-table-column>
   <el-table-column  prop="TotalKill" label="TotalKill">  </el-table-column>
    <el-table-column  prop="TotalDamage" label="TotalDamage">  </el-table-column>
    <el-table-column  prop="status" label="status">  </el-table-column>
    <el-table-column  prop="time" label="Time of battle">  </el-table-column>

  </el-table>
</template>
<script>
export default {
  props: ['hdata'],
  computed () {
    console.log(this.hdata)
  }
}
</script>
