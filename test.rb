#Richard Mable test suite for transaction and article classes
#this is to link to the article.rb file
require_relative 'article'

describe Article do
	let(:new_article_all_args){Article.new(title: "War and Peace", body: "Blah blah blah blah blah", author: "Richard Mable")}
	let(:q_author){Article.new(title: "This is the q one", body: "Blah blah blah blah blah", author: "Quacker")}
	let(:new_article_no_title){Article.new(body: "Blah blah blah blah blah", author: "Richard")}
	let(:new_article_no_body){Article.new(title: "There is no body", author: "Richard")}

	#check title?
	it '.title? should return nil if empty' do
		#expect the article instance with no title, running the title method, to return false
		expect(new_article_no_title.title?).to eq(false)
	end

	#check body?
	it '.body? should return nil if empty' do
		expect(new_article_no_body.body?).to eq(false)
	end

	it 'should return true if title' do
		expect(new_article_all_args.title?).to eq(true)
	end

	it 'should return true if body' do
		expect(new_article_all_args.body?).to eq(true)
	end

	it '.string_empty? should return false if there is a string' do
		expect(new_article_all_args.string_empty?("hello")).to eq(false)
	end

	it '.string_empty? should return true if empty or nil' do
		expect(new_article_all_args.string_empty?("")).to eq(true)
		expect(new_article_all_args.string_empty?(nil)).to eq(true)
	end

	it '.authors_name_starts_with_q? should return true if Q' do
		expect(q_author.authors_name_starts_with_q?).to eq(true)
	end

	it '.authors_name_starts_with_q? should return false if not Q' do
		expect(new_article_all_args.authors_name_starts_with_q?).to eq(false)
	end

	it '.title_as_html should return string with h1 tags' do
		expect(new_article_all_args.title_as_html).to eq("<h1>#{@title}<h1>")
	end
	

# def title_as_html
# "<h1>#{title}</h1>"
# end

end






