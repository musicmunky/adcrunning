class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :apikey
      t.string :name
      t.numeric :reqs_per_day
      t.string :service_url

      t.timestamps
    end
  end
end
