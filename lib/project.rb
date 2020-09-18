class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    backer = ProjectBacker.new(self, backer)
  end

  def backers
    backer_array = []
    ProjectBacker.all.each do |p| 
      if p.project == self
        backer_array << p.backer
      end
    end
    backer_array
  end
  
end