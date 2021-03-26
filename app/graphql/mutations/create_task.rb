class Mutations::CreateTask < Mutations::BaseMutation
  # allows to return null
  null true

  argument :user_id, Int, required: true do
    description "User ID creating the task"
  end

  argument :title, String, required: true do
    description "Task title"
  end

  argument :description, String, required: true do
    description "Task description"
  end

  # Return a task type as payload
  type Types::TaskType

  def resolve(user_id:, title:, description:)
    @task = Task.new(user_id: user_id, title: title, description: description)
    @task.save
    return @task
  end
end