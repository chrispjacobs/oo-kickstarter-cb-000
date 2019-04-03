class Backer
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  attr_reader :backed_projects
  def back_project(project)
    @backed_projects << project
    project.add_backer(self)
  end
end
