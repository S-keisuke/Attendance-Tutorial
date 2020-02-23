class Attendance < ApplicationRecord
  belongs_to :user
  
  # 追加機能No6関連 worked_onに空でないこと（presence）を追加
  validates :worked_on, presence: true
  validates :note, length: { maximum: 50 }

  # 追加機能No7関連 出勤時間が存在しない場合、退勤時間は無効
  validate :finished_at_is_invalid_without_a_started_at
  def finished_at_is_invalid_without_a_started_at
    errors.add(:started_at, "が必要です") if started_at.blank? && finished_at.present?
  end
  
  # 追加機能No8関連 出勤・退勤時間どちらも存在する時、出勤時間より早い退勤時間は無効
  validate :started_at_than_finished_at_fast_if_invalid
  def started_at_than_finished_at_fast_if_invalid
    if started_at.present? && finished_at.present?
      errors.add(:started_at, "より早い退勤時間は無効です") if started_at > finished_at
    end
  end
end