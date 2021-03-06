-- mod-version:2 -- lite-xl 2.0
-- copied from language_js, but added regex highlighting back
local syntax = require "core.syntax"

syntax.add {
  name = "TypeScript",
  files = { "%.ts$" },
  comment = "//",
  patterns = {
    { pattern = "//.-\n",                   type = "comment"  },
    { pattern = { "/%*", "%*/" },           type = "comment"  },
    { pattern = { '/%g', '/', '\\' },       type = "string"   },
    { pattern = { '"', '"', '\\' },         type = "string"   },
    { pattern = { "'", "'", '\\' },         type = "string"   },
    { pattern = { "`", "`", '\\' },         type = "string"   },
    { pattern = "0x[%da-fA-F]+",            type = "number"   },
    { pattern = "-?%d+[%d%.eE]*",           type = "number"   },
    { pattern = "-?%.?%d+",                 type = "number"   },
    { pattern = "[%+%-=/%*%^%%<>!~|&]",     type = "operator" },
    { pattern = "interface%s()[%a_][%w_]*", type = {"keyword", "keyword2"} },
    { pattern = "type%s()[%a_][%w_]*",      type = {"keyword", "keyword2"} },
    { pattern = "[%a_][%w_]*%f[(]",         type = "function" },
    { pattern = "[%a_][%w_]*",              type = "symbol"   },
  },
  symbols = {
    ["async"]      = "keyword",
    ["await"]      = "keyword",
    ["break"]      = "keyword",
    ["case"]       = "keyword",
    ["catch"]      = "keyword",
    ["class"]      = "keyword",
    ["const"]      = "keyword",
    ["continue"]   = "keyword",
    ["debugger"]   = "keyword",
    ["default"]    = "keyword",
    ["delete"]     = "keyword",
    ["do"]         = "keyword",
    ["else"]       = "keyword",
    ["export"]     = "keyword",
    ["extends"]    = "keyword",
    ["finally"]    = "keyword",
    ["for"]        = "keyword",
    ["function"]   = "keyword",
    ["get"]        = "keyword",
    ["if"]         = "keyword",
    ["import"]     = "keyword",
    ["from"]       = "keyword",
    ["implements"] = "keyword",
    ["in"]         = "keyword",
    ["instanceof"] = "keyword",
    ["let"]        = "keyword",
    ["new"]        = "keyword",
    ["return"]     = "keyword",
    ["set"]        = "keyword",
    ["static"]     = "keyword",
    ["readonly"]   = "keyword",
    ["private"]    = "keyword",
    ["public"]     = "keyword",
    ["protected"]  = "keyword",
    ["super"]      = "keyword",
    ["switch"]     = "keyword",
    ["throw"]      = "keyword",
    ["try"]        = "keyword",
    ["typeof"]     = "keyword",
    ["keyof"]      = "keyword",
    ["var"]        = "keyword",
    ["while"]      = "keyword",
    ["with"]       = "keyword",
    ["yield"]      = "keyword",
    ["declare"]    = "keyword",
    ["in"]         = "keyword",
    ["of"]         = "keyword",
    ["as"]         = "keyword",
    ["namespace"]  = "keyword",
    ["true"]       = "literal",
    ["false"]      = "literal",
    ["null"]       = "literal",
    ["undefined"]  = "literal",
    ["void"]       = "keyword2",
    ["arguments"]  = "keyword2",
    ["Infinity"]   = "keyword2",
    ["NaN"]        = "keyword2",
    ["this"]       = "keyword2",
    ["string"]     = "keyword2",
    ["number"]     = "keyword2",
    ["boolean"]    = "keyword2",
    ["never"]      = "keyword2",
    ["any"]        = "keyword2",
    ["unknown"]    = "keyword2",
  },
}
