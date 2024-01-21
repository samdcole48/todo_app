class MainController < ApplicationController
  def index
  end

  def about
  end

  def hello
    redirect_to(controller: 'main', action: 'index')
  end

end
