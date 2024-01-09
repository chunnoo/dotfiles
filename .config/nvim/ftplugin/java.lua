local bundles = {
	vim.fn.glob(
		"/home/mathias/Desktop/Installs/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-*.jar",
		1
	),
}

vim.list_extend(
	bundles,
	vim.split(
		vim.fn.glob(
			"/home/mathias/Desktop/Installs/vscode-java-test/server/*.jar",
			1
		),
		"\n"
	)
)

local lombok_jar_path =
	"/home/mathias/.m2/repository/org/projectlombok/lombok/1.18.20/lombok-1.18.20.jar"

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
			configuration = {
				run = {
					projectName = "atvmsp-management",
				},
			},
		},
	},
	init_options = {
		jvm_args = { "-javaagent:" .. lombok_jar_path },
		bundles = bundles,
	},
	on_attach = function()
		require("jdtls").setup_dap({ hotcodereplace = "auto" })
	end,
}
require("jdtls").start_or_attach(config)
