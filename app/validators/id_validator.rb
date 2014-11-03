  class SaIdNumberValidator < ActiveModel::EachValidator
  def self.sa_id_number? input
      return false unless numeric?(input)

      #1. numeric and 13 digits
      return false unless length?(input, 13)

      #2. first 6 numbers is a valid date
      dateString = "#{input[0..1]}-#{input[2..3]}-#{input[4..5]}"
      begin
        date = Date.parse dateString
      rescue ArgumentError
        return false
      end

      #3. luhn formula
      temp_total = 0
      checksum = 0
      multiplier = 1
      (0..12).each do |i|
        temp_total = input[i].to_i * multiplier
        if temp_total > 9
          temp_total = temp_total.to_s[0].to_i + temp_total.to_s[1].to_i
        end
        checksum += temp_total
        multiplier = multiplier.even? ? 1 : 2
      end
      return checksum % 10 == 0
    end
  end
end