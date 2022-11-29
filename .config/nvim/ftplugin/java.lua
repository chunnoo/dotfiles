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
		},
	},
}
require("jdtls").start_or_attach(config)
