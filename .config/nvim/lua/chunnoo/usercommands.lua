local function GoogleJavaFormat(args)
	local current_file = vim.fn.expand("%")

	local cmd = "google-java-format "
	if args.range == 2 then
		cmd = cmd .. "--line " .. args.line1 .. ":" .. args.line2 .. " "
	end
	cmd = cmd .. current_file

	local f = io.popen(cmd)
	local content = f:read("*all")
	f:close()

	local lines = {}
	for line in content:gmatch("([^\n]*)\n?") do
		table.insert(lines, line)
	end

	vim.api.nvim_buf_set_lines(0, 0, -1, true, lines)
end

vim.api.nvim_create_user_command(
	"GoogleJavaFormat",
	GoogleJavaFormat,
	{ desc = "Run google-java-format on current buffer", range = true }
)
