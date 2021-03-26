module Types
  class MutationType < Types::BaseObject

    field :create_task, mutation: Mutations::CreateTask do
      "This allows to create a Task via GraphQL"
    end
  end
end
