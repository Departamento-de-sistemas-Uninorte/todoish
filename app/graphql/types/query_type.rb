module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :task, TaskType, null: false do
      description "This allows to query a task"
      argument :id, ID, required: true
    end

    def task(id:)
      Task.find(id)
    end
  end
end
