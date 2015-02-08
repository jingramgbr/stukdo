class TasksController < InheritedResources::Base

before_action :authenticate_user!
 
def index
  @tasks = current_user.tasks
  respond_with(@tasks)
end
 
def create
  @task = current_user.tasks.new(task_params)
  @task.save
  respond_with(@task)
end

  private

    def task_params
      params.require(:task).permit(:content)
    end
end

