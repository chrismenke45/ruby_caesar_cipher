#inputs
puts "Input string to cipher"
string = gets.chomp
puts "Input cipher offset value"
offset_value = gets.chomp.to_i

#convert letters to ascii
ascii_array_from_string = string.bytes

#add offset to ascii number and put back in range if added/subtracted to much
updated_ascii_array = ascii_array_from_string.map do |i|
    if (i <= 122 && i >= 97)
        new_i = i + offset_value
        while new_i > 122
            new_i -= 26
        end
        while new_i < 97
            new_i += 26
        end
    end
    if (i <= 90 && i >= 65)
        new_i = i + offset_value
        while new_i > 90
            new_i -= 26
        end
        while new_i < 65
            new_i += 26
        end
    end
    new_i || i
end

#convert back to letters and put in string
new_string = updated_ascii_array.map do |i|
    i.to_i.chr
end.join("")
p new_string