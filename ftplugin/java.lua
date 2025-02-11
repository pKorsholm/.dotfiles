local mason = require 'mason-registry'
local jdtls_path = mason.get_package('jdtls'):get_install_path()

local equinox_launcher_path =
    vim.fn.glob(jdtls_path .. '/plugins/org.eclipse.equinox.launcher_*.jar')

local config_path = vim.fn.glob(jdtls_path .. '/config_mac_arm')
print(config_path)

local lombok_path = jdtls_path .. '/lombok.jar'
print(lombok_path)

local workspace_path = vim.fn.stdpath 'cache'
    .. '/jdtls/'
    .. vim.fn.fnamemodify(vim.fn.getcwd(), ':t')

print(workspace_path)

local localCmd = {
    -- vim.fn.expand '$HOME/.local/share/nvim/mason/bin/jdtls',
    -- vim.fn.expand '~/.sdkman/candidates/java/21.*-tem/bin/java', -- or '/path/to/java17_or_newer/bin/java'
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xms4g',

    '-javaagent:' .. lombok_path,

    '-jar',
    equinox_launcher_path,

    '-configuration',
    config_path,

    '-data',
    workspace_path,
    '--add-modules=ALL-SYSTEM',
    '--add-opens',
    'java.base/java.util=ALL-UNNAMED',
    '--add-opens',
    'java.base/java.lang=ALL-UNNAMED',
}

require('jdtls').start_or_attach({
    cmd = localCmd,
    capabilities = require 'cmp_nvim_lsp'.default_capabilities(),
    root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1])
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        client.server_capabilities.semanticTokensProvider = nil
    end,
});

-- https://github.com/gmr458/nvim/blob/main/ftplugin/java.lua
