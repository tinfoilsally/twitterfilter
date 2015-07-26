Shoes.app title: "Twitter Filter" do

	background powderblue..white
	border("#faebd7",
			strokewidth: 3)
	style Shoes::Title, font: "Gotham Narrow"
	style Shoes::Tagline, font: "Gotham Narrow"
	style Shoes::Para, font: "Gotham Narrow"
			
	stack margin_top: 20, margin_left: 20 do
		image "http://images.clipartpanda.com/love-birds-clipart-aTeKAzjT4.png"
		end
		
	stack margin_left: 20 do 
		title "twitter filter", stroke: snow
		tagline em("it's for filtering twitter."), stroke: cadetblue 
	end
	
	stack do
		flow(margin: 12) do
			para "enter username one:"
			@username1 = edit_line do
				@para1.text = @username1.text
			end
			@para1 = para ' '
		end
		flow(margin: 12) do
			para "enter username two:"
			@username2 = edit_line do
				@para2.text = @username2.text
			end
			@para2 = para ' '
		end
		flow(margin: 12) do
			para "enter hashtag:"
			@hashtag = edit_line do
				@para3.text = hashtag.text
			end
			@para3 = para ' '
		end
	end
	
	flow margin_left: 100 do
			button "GO! GO! GO!" do
				window title: "Filter Results" do
						para "Filter results go here!"
						stack do
							@para1.text
							@para2.text
							@para3.text
						end
				end
			end
	end

end
