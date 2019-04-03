class Project
  def initialize(title)
    @title = title
    @backers = []
  end
  attr_reader :backers, :title
  def add_backer(backer)
    @backers << backer
    backer.back_project_minimalist(self)
  end
  def add_backer_minimalist(backer)
    @backers << backer
  end
end
