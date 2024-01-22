class TasksController < ApplicationController
  def index
    @tasks = Task.order(:position)
  end

  def show
    @task = Task.find(params[:id])
    # if @task.category_id != "nil"
    #   @category = Category.find(@task.category_id)
    # end
  end

  def new
    @task = Task.new
    #Task.new(position: 1) is a way of setting a default value for a new task
    @categories = Category.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      #the 'new' action is not being called, it is rending the new view template
      #bc of this we must assign any instance variables needed
      render('new')
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      render('edit')
    end
  end

  def delete
    @task = Task.find(params[:id])
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :completed, :position)
  end
end
