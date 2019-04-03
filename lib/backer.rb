class Backer
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  attr_reader :backed_projects, :name
  def back_project(project)
    @backed_projects << project
    project.add_backer_minimalist(self)
  end
  def back_project_minimalist(project)
    @backed_projects << project
  end
end
