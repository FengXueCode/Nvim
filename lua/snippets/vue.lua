local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("vue", {
  s("vue2", {
    t({
      "<template>",
      "  <div class=''>",
      "    ",
      "  </div>",
      "</template>",
      "",
    }),
    t({
      "<script>",
      "export default {",
      "  name: '",
    }),
    i(1, "ComponentName"),
    t({
      "',",
      "  data() {",
      "    return {",
      "      ",
      "    };",
      "  },",
      "  methods: {",
      "    ",
      "  },",
      "};",
      "</script>",
      "",
    }),
    t({
      "<style scoped lang='scss'>",
      "",
      "</style>",
    }),
  }),
  s("vue3", {
    t({
      "<template>",
      "  <div class='main'>",
      "    ",
      "  </div>",
      "</template>",
      "",
    }),
    t({
      "<script setup lang='ts'>",
      "onLoad((val:any)=>{",
      "",
      "});",
      "onMounted(()=>{",
      "",
      "});",
      "</script>",
      "",
    }),
    t({
      "<style scoped lang='scss'>",
      "",
      "</style>",
    }),
  }),
})
