require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "サンプルデータは正しい" do
    u = users(:sample)
    assert u.valid?
  end

  test "nameが空文字だとダメ" do
    u = users(:sample)
    u.name = ""
    assert_not u.valid?
  end
  
  test "emailが空文字だとダメ" do
    u = users(:sample)
    u.email = ""
    assert_not u.valid?
  end
end
