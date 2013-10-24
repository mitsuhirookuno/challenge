require 'spec_helper'

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

   describe "日本通貨フォーマット" do

     it "値引き有り" do
       expect(helper.format_discount_rate( 100, 80 )).to eq('(20％ OFF)')
     end


     it "値引き無し" do
       expect(helper.format_discount_rate( 100, 100 )).to eq('(0％ OFF)')
     end

   end

   describe "number_to_currency_jp" do

     it "number_to_currency_jp" do
       expect(helper.number_to_currency_jp( 80_000 )).to eq('￥80,000')
     end

   end

end
