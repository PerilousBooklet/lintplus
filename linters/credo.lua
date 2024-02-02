local lintplus = require "plugins.lintplus"

lintplus.add("credo") {
  filename = "%.ex$",
  procedure = {
    command = lintplus.command {
      "mix", "credo", "", lintplus.filename
    },
    interpreter = lintplus.interpreter {
      -- TODO: fix regex
      hint = "(.-)%((%d+), (%d+)%) Hint: (.+)",
      warning = "(.-)%((%d+), (%d+)%) Warning: (.+)",
      error = "(.-)%((%d+), (%d+)%) Error: (.+)",
    },
  },
}

