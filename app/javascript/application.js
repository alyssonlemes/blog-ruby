// application.js
import Rails from '@rails/ujs'
Rails.start()

import "@hotwired/turbo-rails";
import "controllers";
import "bootstrap";
import "jquery";
import "@popperjs/core";

// Adicione qualquer configuração adicional
document.addEventListener("turbo:load", () => {
  $('[data-toggle="tooltip"]').tooltip({ trigger: "hover" });
});
