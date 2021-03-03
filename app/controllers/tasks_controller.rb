class TasksController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: "Task saved!"
    else
      message_error = "Task could not be saved. " 
      @task.errors.full_messages.each do |error|
        message_error = message_error + " & " + error
      end
      flash.alert = message_error
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: "Task destroyed!"
  end

  private 

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
