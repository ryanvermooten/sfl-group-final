class Gardener < ActiveRecord::Base
  belongs_to :group
  has_many :answers
  has_and_belongs_to_many :questionnaires, join_table: 'gardener_questionnaires'
  #has_and_belongs_to_many :questionnaires, join_table: 'gardener_questionnaires'
  #has_many :answers, through: :gardener_questionnaires
  has_many :attendance_registers_training_sessions
  has_many :attendance_registers, through: :attendance_registers_training_sessions
  has_many :support_visits, dependent: :destroy
  has_one :garden, dependent: :destroy
  has_one :living_arrangement, dependent: :destroy
  has_one :sfl, dependent: :destroy
  has_one :education, dependent: :destroy
  has_one :employment, dependent: :destroy
  has_one :grant, dependent: :destroy
  has_one :ability, dependent: :destroy 
  has_one :experience, dependent: :destroy
  has_one :health, dependent: :destroy
  has_one :general_statement, dependent: :destroy
  has_one :expenditure, dependent: :destroy
  has_one :follow_up_visit_garden, dependent: :destroy
  has_one :follow_up_visit_eating, dependent: :destroy
  has_one :follow_up_visit_selling, dependent: :destroy
  has_one :follow_up_visit_impression, dependent: :destroy
  #has_many :documents
 # has_attached_file :avatar, :styles => {:thumb => "100x100>"}
 # validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  has_attached_file :avatar, dependent: :destroy,
	:storage => :dropbox,
	:dropbox_credentials => "#{Rails.root}/config/dropbox.yml",
	:styles => { :medium => "300x300>", :thumb => "100x100>" },
	 :default_url => "/images/missing_pic.jpeg",
  	:dropbox_options => {       
	:path => proc { |style| "#{style}/#{id}_#{avatar.original_filename}"},       
	:unique_filename => true   
}
validates_attachment_content_type :avatar, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
validates :first_name, length: {minimum: 2, too_short: "First name needs at least 2 characters"}
validates :last_name , length: {minimum: 2, too_short: "Last name needs at least 2 characters"}
validates :contact_number, length: {minimum: 9, too_short: "Contact numbers need to have 10 characters", maximum: 11, too_long: "Contact numbers need to have 10 characters" }
validates :address , length: {minimum: 4, too_short: "Address needs at least 4 characters"}
validates :id_number, :length => { :is => 13, 
    :too_short => "must have at least %{count} words",
    :too_long  => "must have at most %{count} words"},
    :uniqueness => true
validates :race, :presence => true
end
 
  #mount_uploader :image, ImageUploader

  def active?
    status == 'active'
  end

