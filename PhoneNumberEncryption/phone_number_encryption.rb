class PhoneNumberEncryption
  def encrypt_phone_number(number=nil)
    return p 'Number is not present' if number.nil?
    return p 'Invalid Phone number. Length should be 10 and should not contain 0 or 1' unless valid_number?(number)
    p 'Valid Phone Number'

    # TODO permutation and combinations for finding words(logic)
  end

  def valid_number?(number=nil)
    #convert number to string
    number = number.to_s
    return false if number.nil?
    return false unless number !~ /\D/
    return false unless number.length == 10
    return false if contain_zero_one?(number)
    true
  end

  def contain_zero_one?(number=nil)
    return true if number.nil?
    number.chars.each do |digit|
      return true if digit.to_i == 0 || digit.to_i == 1
    end
    false
  end
end

p "Check For nil"
PhoneNumberEncryption.new.encrypt_phone_number

p "Check For digit 1 or 0"
PhoneNumberEncryption.new.encrypt_phone_number(1234567890)

print '\n'

p "Check for Length"
PhoneNumberEncryption.new.encrypt_phone_number(23456789)

print '\n'

p "Check For alphabets"
PhoneNumberEncryption.new.encrypt_phone_number('2345xyz6789')

p "Check for valid phone number"
PhoneNumberEncryption.new.encrypt_phone_number(2345678935)

