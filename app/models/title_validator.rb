class TitleValidator < ActiveModel::EachValidator

  def validate_each(record, attribute, value)
    click_bait = %w(Won't Believe Secret Top Guess)
      unless value != nil && click_bait.any? {|word| value.include?(word) }
      record.errors[attribute] << (options[:message] || "Title is not included in the list")
    end
  end

end
