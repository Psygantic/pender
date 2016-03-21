require File.join(File.expand_path(File.dirname(__FILE__)), '..', 'test_helper')

class MediaTest < ActiveSupport::TestCase
  test "should create media" do
    assert_kind_of Media, create_media
  end

  test "should have URL" do
    m = create_media url: 'http://foo.bar'
    assert_equal 'http://foo.bar', m.url
  end

  test "should parse YouTube user" do
    m = create_media url: 'https://www.youtube.com/user/MeedanTube'
    assert_equal 'MeedanTube', m.as_json['title']
  end
end