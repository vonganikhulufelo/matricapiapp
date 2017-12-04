class CreateMatricreports < ActiveRecord::Migration[5.1]
  def change
    create_table :matricreports do |t|
      t.string :emis
      t.string :centre_no
      t.string :school_name
      t.integer :wrote_2014
      t.integer :passed_2014
      t.integer :wrote_2015
      t.integer :passed_2015
      t.integer :wrote_2016
      t.integer :passed_2016
      t.decimal :pass_rate
      t.decimal :failure_rate
      t.decimal :pass_rate2015
      t.decimal :failure_rate2015
      t.decimal :pass_rate2016
      t.decimal :failure_rate2016

      t.timestamps
    end
  end
end
