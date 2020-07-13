class GratefulsController < ApplicationController
  def new
    @grateful = Grateful.new
    @todays_list = todays_list
  end

  def create
    title = params[:title]
    @grateful = Grateful.create(title: title, user: current_user)
    redirect_to '/'
  end

  private

  def todays_list
    today = Time.zone.now.beginning_of_day..Time.zone.now.end_of_day
    Grateful.order(created_at: :desc)
      .where(user: current_user, created_at: today)
      .take(3)
      .map { |g| g.title }
  end
end
