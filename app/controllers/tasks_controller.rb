class TasksController < InheritedResources::Base

  private

    def task_params
      params.require(:task).permit(:content)
    end
end

