local M = {}

M.get_spring_boot_runner = function (debug)
  local debug_param = ""
  if debug then
    debug_param = ' -Dspring-boot.run.jvmArguments="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=5005" '
  end

  -- local profile_param = ""
  -- if profile then
  --   profile_param = " -Dspring-boot.run.profiles=" .. profile .. " "
  -- end

  return 'mvn spring-boot:run ' .. debug_param
end

M.run_spring_boot = function (debug)
  vim.cmd('term ' .. M.get_spring_boot_runner(debug))
end

return M
