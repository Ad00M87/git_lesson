require 'colorize'
require_relative 'git'

class Main
	include Git

	def puts_git(cmd)
		puts `git #{cmd} -h`
		menu
	end

	def self.menu
		puts 'MAIN MENU'.colorize(:cyan)
		puts '1: Enter git command'.colorize(:cyan)
		puts '2: Exit'.colorize(:cyan)
		choice = gets.to_i
		case choice
		when 1
			puts 'Enter git command'.colorize(:green)
			Git.display_cmd(gets.strip)
			menu
		when 2
			exit
		else
			puts 'Invalid choice'.colorize(:red)
			menu
		end
	end

	menu
end

Main.menu
