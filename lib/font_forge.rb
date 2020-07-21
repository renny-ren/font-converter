# coding: utf-8
require 'font_forge/model/abstract'

module FontForge
  class << self
    def convert(input, output)
      script_path = File.join(File.dirname(File.expand_path(__FILE__)), "font_forge/script/convert.sh")
      system "fontforge -script '#{script_path}' '#{input}' '#{output}'"
    end

    def parse(file_path)
      script_path = File.join(File.dirname(File.expand_path(__FILE__)), "font_forge/script/parse.sh")
      stdout_str = `fontforge -script '#{script_path}' '#{file_path}'`.split("\n")
      {
        font_name: stdout_str[0],
        full_name: stdout_str[1],
        family_name: stdout_str[2]
      }
    end
    alias_method :🔍, :parse
  end
end
