class Project
  def initialize
    @backers = []
  end
  attr_reader :backers
  def add_backer(backer)
    @backers << backer
  end
end
