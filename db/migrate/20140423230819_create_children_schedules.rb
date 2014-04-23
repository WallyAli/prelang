class CreateChildrenSchedules < ActiveRecord::Migration
  def change
    create_table :children_schedules do |t|
      t.belongs_to :child, index: true
      t.belongs_to :schedule, index: true
    end
  end
end
