class Credit < ActiveRecord::Base
  has_many :gear_actions
  def to_s
    credit_code
  end

  #view usage: <img src="<%= some_credit.to_qr (width, height)%>" />
  def to_qr(width = 200, height = 200)
    qr = RQRCode::QRCode.new( credit_code, :size => 5, :level => :h )
    png = qr.to_img.resize(width,height)
    png.to_data_url
  end

  def self.generate
    create(credit_code: SecureRandom.uuid)
  end
end
