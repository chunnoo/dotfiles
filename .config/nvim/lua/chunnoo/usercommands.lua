vim.api.nvim_create_user_command("GoogleJavaFormat", function()
	vim.cmd(":w")
	vim.cmd(
		":silent !java -jar /home/mathias/Desktop/Installs/google-java-format/core/target/google-java-format-HEAD-SNAPSHOT-all-deps.jar -i %"
	)
end, { desc = "Run google-java-format on current buffer" })
