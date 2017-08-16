class AddSpreedSheetToUser < ActiveRecord::Migration[5.1]
  def up
    change_table :spreed_sheets do |t|
      t.belongs_to :user, index: true
    end
  end
end
