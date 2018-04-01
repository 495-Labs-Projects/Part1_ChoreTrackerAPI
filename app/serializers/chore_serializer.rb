class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :child_id, :task, :due_on, :completed
  
  def task
    ChoreTaskSerializer.new(object.task)
  end
  
  def completed
      if object.completed
         "Completed"
      else
          "Pending"
      end
  end
end
