class CreateDancerInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :dancer_infos do |t|
      t.string :name
      t.string :bio
      t.string :ighandle

      t.timestamps
    end
  end
end
