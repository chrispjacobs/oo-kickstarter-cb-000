class Project
  def initialize(title)
    @title = title
    @backers = []
  end
  attr_reader :backers, :title
  def add_backer(backer)
    @backers << backer
    project_check = false
    backer.backed_projects.each do |backed_project|
      if backed_project == self
        project_check = true
      end
    end
    if project_check == false
      backer.back_project(self)
    end
  end
end
