require 'rails_helper'

RSpec.describe "events/show", :type => :view do
  # pending "add some examples to (or delete) #{__FILE__}"
  context '未ログインユーザーがアクセスしたとき' do
    before do
      allow(view).to receive(:logged_in?) { false }
      allow(view).to receive(:current_user) { nil }
    end

    context 'かつ @event.owner が nil のとき' do
      before do
        assign(:event, create(:event, owner: nil))
        assign(:tickets, [])
      end

      it '"退会したユーザーです"と表示されていること' do
        render
        expect(rendered).to match /退会したユーザーです/
      end
    end
  end
end
