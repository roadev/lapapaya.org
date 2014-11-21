class Dream < ActiveRecord::Base
include GiocoResource

	belongs_to :user
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Dream.create! row.to_hash
		end
	end

#	def self.import(file)
#		spreadsheet = open_spreadsheet(file)
#		header = spreadsheet.row(1)
#		(2..spreadsheet.last_row).each do |i|
#		  row = Hash[[header, spreadsheet.row(i)].transpose]
#		 dream = find_by_id(row["id"]) || new
#		  dream.attributes = row.to_hash.slice(*accessible_attributes)
#		  dream.save!
#		end
#	end
# 
#	def self.open_spreadsheet(file)
#		case File.extname(file.original_filename)
#		when ".csv" then Csv.new(file.path, nil, :ignore)
#		when ".xls" then Excel.new(file.path, nil, :ignore)
#		when ".xlsx" then Excelx.new(file.path, nil, :ignore)
#		else raise "Unknown file type: #{file.original_filename}"
#		end
#	end

end


