class PagesController < ApplicationController
  def home
  end

  def about
  end

  def list
    @logs = Log.all
  end

end
