class MainController < ApplicationController
  def index
  end

  def about
    @created_by = "Sam Cole"
  end

  def hello
    redirect_to(controller: 'main', action: 'index')
  end

end
