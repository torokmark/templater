module Templater
  # Replaces templates in a string with the values.
  #
  # @note templates in a string are supposed to be like `{{temp}}`
  #
  # @param str [String] the string with templates.
  # @param values [Hash, Array] the values to replace templates
  # @return [String] the string with replaced values.
  def self.replace(str, values)
    if values.is_a? Hash
        str.gsub(/{{(.*?)}}/) { 
            if !values[$1].nil?
                values[$1]
            elsif !values[$1.to_sym].nil?
                values[$1.to_sym]
            end
        }
    elsif values.is_a? Array
        str.gsub(/{{(.*?)}}/).each_with_index { |v, i| values[i] }
    else
        str
    end
  end
end
