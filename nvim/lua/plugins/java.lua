return {
  {
    "mfussenegger/nvim-jdtls",
    ft = { "java" },
    opts = {
      -- Resolve Lombok jar from Mason's install dir
      lombok = vim.fn.glob(vim.fn.stdpath("data") .. "/mason/packages/jdtls/lombok.jar"),
      -- Use system java (jdtls will pick project JDK from pom)
      cmd = { "jdtls" },
    },
    config = function(_, opts)
      -- Auto-detect Lombok only if jar exists
      local lombok_jar = vim.fn.stdpath("data") .. "/mason/packages/jdtls/lombok.jar"
      if vim.fn.filereadable(lombok_jar) == 1 then
        opts.lombok = lombok_jar
      end
      require("jdtls").start_or_attach(opts)
    end,
  },
}
