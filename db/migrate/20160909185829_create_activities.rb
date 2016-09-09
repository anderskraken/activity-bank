class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string	:title
      t.text		:body
      t.integer	:creator_id
      t.string	:participants
      t.string	:time_req
      t.string	:resources_req
      t.string	:location_req

      t.timestamps
    end
  end
end
