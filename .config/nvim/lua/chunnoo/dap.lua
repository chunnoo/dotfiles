local dap = require("dap")
dap.configurations.java = {
	{
		type = "java",
		request = "attach",
		name = "Debug (Attach) - Remote",
		hostName = "localhost",
		port = 8000,
		projectName = "server",
		exceptionBreakpoints = {},
	},
}
