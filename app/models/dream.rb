class Dream < ActiveRecord::Base
	belongs_to :user
	validates :dream, presence: { message: ": ¡Por favor ingresa tu sueño!" }
	validates :quiero, presence: { message: ": ¡Dinos por dónde quieres arrancar para lograr tu sueño!" }
	validates :ofrezco, presence: { message: ": ¡Cuéntanos qué ofreces a cambio!" }
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, content_type: %w(image/jpeg image/jpg image/png)
	acts_as_taggable
	acts_as_taggable_on :tag_list
	paginates_per 15

	enum select_type: {
    'Desarrollo Personal' => 'personal_development',
    'Trabajo Social' => 'social_work',
    'Desarrollo sostenible' => 'sustainable_development',
  }
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
