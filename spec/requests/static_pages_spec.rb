require 'spec_helper'

describe "Static Pages" do
	describe "Home page" do
		#最初の行はRSpecが解釈しないので、分かりやすい説明を記述
		it "should have the content 'Sample App'" do
			#ダブルクォートで囲まれた文字列はRSpecでは無視されるので分かりやすい説明文を
			visit '/static_pages/home'
			#Capybaraのvisit機能を使用、/static_pages/homeURLへのアクセスをシュミレーション
			expect(page).to have_content('Sample App')
			#Capybaraのpage変数を使用、アクセスした結果のページに正しいコンテンツが表示されているかテスト
		end

		it "should have the title 'Home'" do
			visit '/static_pages/home'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
		end
 	end

	describe "Help page" do

		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end

		it "should have the title 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
		end
	end

	describe "About page" do

		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end

		it "should have the title'About us'" do
			visit '/static_pages/about'
			expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
		end
	end

end
