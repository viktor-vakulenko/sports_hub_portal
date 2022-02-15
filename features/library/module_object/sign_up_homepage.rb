# frozen_string_literal: true

module SignUpHomepage
  def sign_up_button
    $browser.link(text: 'Sign up')
  end
end
