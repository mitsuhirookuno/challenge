require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the WelcomeHelper. For example:
#
# describe WelcomeHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe WelcomeHelper do

   describe "フィールド名の日本語変換" do

     it "一つのペアを日本語に置き換える" do
       template = 'this %s !!!'
       target_string   = 'matched'
       replaced_string = '変換後'
       source      = template % target_string
       destination = template % replaced_string

       expect(helper.replace_local( source, { target_string => replaced_string } )).to eq(destination)
     end

     it "複数のペアを日本語に置き換える" do
       template = 'this %s, that %s !!!'
       target_strings   = 'matched1', 'matched2'
       replaced_strings = '変換後壱', '変換後弐'
       source      = template % target_strings
       destination = template % replaced_strings

       expect(helper.replace_local( source, { target_strings[0] => replaced_strings[0],
                                              target_strings[1] => replaced_strings[1] } )).to eq(destination)
     end
   end

end
