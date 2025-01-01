import Rails from "@rails/ujs"
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

$(function () {
    $('[data-toggle="tooltip"]').tooltip({ trigger: "hover" });
    });

Rails.start();


  
