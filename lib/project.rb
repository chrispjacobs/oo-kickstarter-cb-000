class Project
  def initialize(title)
    @title = title
    @backers = []
  end
  attr_reader :backers, :title
  def add_backer(backer)
    @backers << backer
    already_backed = false
    backer.backed_projects.each do |backed_project|
      if backed_project == self
        already_backed = true
      end
      if already_backed == false
        backer.back_project(self)
      end
    end
  end
end
