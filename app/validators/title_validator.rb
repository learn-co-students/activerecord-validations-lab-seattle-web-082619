class TitleValidator < ActiveModel::Validator

  def validate(record)
    if record.title.present?
      unless ["Won't Believe", "Secret", "Top [number]", "Guess"].any? { |clickbait| record.title.include?(clickbait) }
        record.errors[:title] << 'Need a title with something click-baity!'
      end
    end 
  end

end
