require 'spec_helper'

RSpec.describe FontForge do
  context "parse" do
    it "returns font info" do
      font_file_path = File.join(File.dirname(File.expand_path('..', __FILE__)), "font_file/brtswfte.ttf")
      expect(FontForge.parse(font_file_path)).to eq({ family_name: "Brush Script", font_name: "BrushScriptRegularSWFTE", full_name: "Brush Script" })
    end
  end

  context "convert" do
    it "converts ttf to woff" do
      font_file_path = File.join(File.dirname(File.expand_path('..', __FILE__)), "font_file/brtswfte.ttf")
      expect(FontForge.convert(font_file_path, 'brtswfte.woff')).to be true
    end
  end
end
