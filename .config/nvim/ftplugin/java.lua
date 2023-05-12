local config = {
	cmd = { "jdtls" },
	root_dir = vim.fs.dirname(
		vim.fs.find({ ".gradlew", ".git", "mvnw" }, { upward = true })[1]
	),
	settings = {
		java = {
			codeGeneration = {
				hashCodeEquals = {
					useJava7Objects = true,
				},
				toString = {
					template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
				},
				useBlocks = true,
			},
			completion = {
				importOrder = {
					"#java",
					"#com",
					"#org",
					"#io",
					"java",
					"com",
					"org",
					"io",
				},
			},
		},
	},
	init_options = {
		bundles = {
			vim.fn.glob(
				"/home/mathias/temp/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar",
				1
			),
		},
	},
	on_attach = function()
		require("jdtls").setup_dap({ hotcodereplace = "auto" })
	end,
}
require("jdtls").start_or_attach(config)
