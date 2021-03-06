class Motivation < ActiveRecord::Base
  belongs_to :theme
  belongs_to :user
  validates :theme_id, :presence => true
  validates :user_id, :presence => true
  validates :energy, :presence => true
  validates :total, :presence => true
  validates :comment, :length => {:maximum => 250}

  # FIXME:このメソッドはapplication_helperに移動させる。
  # DBのTIMESTAMPをエポック秒で返します
  def self.to_epoch(db_time_string)
    et = DateTime.parse(db_time_string)
    et = Time.local(et.year, et.mon, et.day, et.hour, et.min, et.sec)
    et.to_i
  end

end
