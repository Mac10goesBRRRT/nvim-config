local git_status, git = pcall(require, "git")
if not git_status then
  return
end

git.setup({
  keymaps = {
    -- blame window
    blame = "<Leader>gb",
    -- open file in git repo
    browse = "<Leader>go",
  }
})
