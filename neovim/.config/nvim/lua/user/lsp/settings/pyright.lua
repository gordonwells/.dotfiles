return {
	settings = {
		python = {
			analysis = {
				typeCheckingMode = "off",
			},
			venvPath = os.getenv("HOME") .. "/.pyenv/versions/",
		},
	},
}
