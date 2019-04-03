class Backer
  def initialize(name)
    @backed_projects = []
    @name = name
  end
  attr_reader :backed_projects, :name
  def back_project(project)
    @backed_projects << project
    already_backed = false
    project.backers.each do |backer|
      if backer == self
        already_backed = true
      end
      if already_backed == false
        project.add_backer(self)
      end
    end
  end
end
