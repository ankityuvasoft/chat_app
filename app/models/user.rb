class User < ApplicationRecord
	has_many :messages
	has_many :conversations, foreign_key: :sender_id

	has_attached_file :avatar, styles: { medium: "20x20>", thumb: "30x30>" }, default_url: "/assets/default.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :lastseenable

  # scope :online, lambda{ where("updated_at > ?", 1.minutes.ago) }       

  # def online?
  #   debugger
  #   if current_sign_in_at.present? 
  #     last_sign_out_at.present? ? current_sign_in_at > last_sign_out_at : true
  #   else
  #     false
  #   end
  # end
  def online?
    (last_seen > 1.minutes.ago) rescue false
  end

   # private

  # def generate_channel_key
  #   begin
  #     key = SecureRandom.urlsafe_base64
  #   end while User.where(:channel_key => key).exists?
  #   self.channel_key = key
  # end
end
