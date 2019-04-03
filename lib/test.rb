require_relative 'project.rb'
require_relative 'backer.rb'

chris = Backer.new("Chris")
video_game = Project.new("Video Game")
chris.back_project(video_game)
puts chris.backed_projects
puts video_game.backers
