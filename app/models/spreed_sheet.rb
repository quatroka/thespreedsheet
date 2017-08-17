class SpreedSheet < ApplicationRecord
  belongs_to :user

  def self.import(file)
    spreadsheet = Roo::Spreadsheet.open(file.path)
    header = spreadsheet.row(1)
    all_data = [] # Avoid n+1 querys
    (2..spreadsheet.last_row).each do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      row['user_id'] = User.first.id
      all_data << row
    end
    SpreedSheet.create(all_data)
  end
end
