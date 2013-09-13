class SkillsController < ApplicationController
  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(params[:skill]) 
    if @skill.save
      redirect_to root_path
    else
      render :new
    end
  end
end