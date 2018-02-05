module Git
	def self.git_cmd(cmd)
		puts `git #{cmd} -h`
	end
end
