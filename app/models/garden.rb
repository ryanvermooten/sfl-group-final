class Garden <ActiveRecord::Base
	belongs_to :gardener
	#belongs_to :group, through: :gardeners
	has_attached_file :avatar,
	:storage => :dropbox,
	:dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
	:styles => { :medium => "300x300>", :thumb => "100x100>" },
	:default_url => "/images/missing_pic.jpeg",
  	:dropbox_options => {       
	:path => proc { |style| "#{style}/#{id}_#{avatar.original_filename}"},       
	:unique_filename => true   
}
#validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
validates :garden_location, length: {minimum: 1, too_short: "You have indicated that the garden is not located at home, so please give address of garden"}, unless: :garden_at_home?
validates :garden_location, :presence => false if :garden_at_home?
validates :garden_l, length: {minimum: 1, too_short: "you must record the lenght of the garden"}, numericality: { only_integer: true }
validates :garden_w, length: {minimum: 1, too_short: "you must record the lenght of the garden"}, numericality: { only_integer: true }

end