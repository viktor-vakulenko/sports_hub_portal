// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery3
//= require popper
//= require bootstrap
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require tinymce
//= require tinymce-jquery
//= require_self
//= require_tree .


require("jquery/src/jquery")
require("bootstrap")
require("custom/user_profile")


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
Rails.start()
Turbolinks.start()
ActiveStorage.start()
