local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require "luasnip.util.events"
local ai = require "luasnip.nodes.absolute_indexer"
local extras = require "luasnip.extras"
local fmt = extras.fmt
local m = extras.m
local l = extras.l
local postfix = require "luasnip.extras.postfix".postfix

ls.add_snippets(
  "all",
  {
    -- 网络请求
    s(
      "request",
      {
        t(
          "request('"
        ),
        i(1, "url"),
        t("',{"),
        i(2, "data"),
        t(
          {"},'POST').then(res=>{",
          "console.log('res',res)",
          "}).catch(err=>{",
          "console.log('err',err)",
          "})",
          ""}
        ),
      }
    ),

  }
)
