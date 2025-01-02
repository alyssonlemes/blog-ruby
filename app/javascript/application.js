import * as Rails from "@rails/ujs"
Rails.start()
import { Turbo } from "@hotwired/turbo-rails"
import "controllers"
import "bootstrap"
import "jquery"
import "@popperjs/core"

document.addEventListener("turbo:load", () => {
  $('[data-toggle="tooltip"]').tooltip({ trigger: "hover" });
});