require "pry"
class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def back_project(project)
    project = ProjectBacker.new(project, self)
  end

  def backed_projects
    proj_array = []
    ProjectBacker.all.each do |p| 
      binding.pry
      if p.backer == self
        proj_array << p.project
      end
    end
    proj_array
  end

end


