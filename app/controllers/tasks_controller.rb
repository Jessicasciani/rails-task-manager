class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new() #generates a new task that will be called in the form
  end

  def create
    @new_task = Task.new(tasks_params) #tasks params is a method you need to crete
    @new_task.save
    redirect_to task_path(@new_task) # no view

  end

  def edit
    @task = Task.find(params[:id]) # select une task avec un id particulier et genere form
  end

  def update
    @task = Task.find(params[:id])
    @task.update(tasks_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task_to_delete = Task.find(params[:id])
    @task_to_delete.destroy
    redirect_to tasks_path
  end

end

 private

 def tasks_params
  params.require(:task).permit(:name, :details)
 end
