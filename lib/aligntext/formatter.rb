module Aligntext
  class Formatter
    def initialize(options={})
      @options = options
      @separator = options[:separator] || " "
    end

    def align(text)
      aligned_text = ""
      max_index = 0

      text.each_line do |line|
        index = line.index(@separator)
        next unless index
        if index > max_index
          max_index = index
        end
      end

      text.each_line do |line|
        index = line.index(@separator)
        unless index
          aligned_text << line
          next
        end
        if index < max_index
          aligned_text << line.insert(index, " " * (max_index - index))
        else
          aligned_text << line
        end
      end

      aligned_text
    end
  end
end
