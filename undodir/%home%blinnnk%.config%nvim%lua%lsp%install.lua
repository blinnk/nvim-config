Vim�UnDo� �m��Q�iX��-�� ��J3>�����k3   #                                  `���    _�                             ����                                                                                                                                                                                                                                                                                                                            #                    V       `���    �                   �               �              #   <-- config that activates keymaps and enables snippet support   local function make_config()   B  local capabilities = vim.lsp.protocol.make_client_capabilities()   K  capabilities.textDocument.completion.completionItem.snippetSupport = true   
  return {       -- enable snippet support        capabilities = capabilities,   E    -- map buffer local keybindings when the language server attaches       on_attach = on_attach,     }   end       local function setup_servers()     require'lspinstall'.setup()   9  local servers = require'lspinstall'.installed_servers()       $  for _, server in pairs(servers) do        local config = make_config()       #    if server == "tailwindcss" then   <      config.cmd = { "tailwindcss-intellisense", "--stdio" }       end       ,    require'lspconfig'[server].setup(config)     end       end       setup_servers()       W-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim   3require'lspinstall'.post_install_hook = function ()   -  setup_servers() -- reload installed servers   Q  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server   end5��            #                                      �                    #                              5��