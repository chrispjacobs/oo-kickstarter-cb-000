class Project
  def initialize
    @backers = []
  end
  attr_reader :backers
  def add_backer(backer)
    @backers << backer
    backer.back_project_self
  end
end
