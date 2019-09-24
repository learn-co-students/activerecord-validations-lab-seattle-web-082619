class ClickbaitValidator < ActiveModel::Validator 
  def validate(record)
    clickbait = [/Won't Believe/, /Secret/, /Top [0-9]/, /Guess/]
    clickbait.each do |check|
      return true if check.match?(record.title)
    end
    record.errors[:title] << "Um, ya gotta drive those clicks. Fix that title!"
    false
  end
end
