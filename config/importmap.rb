pin "@rails/ujs", to: "rails-ujs.js"
pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
pin "jquery", to: "https://code.jquery.com/jquery-3.5.1.min.js"
pin "bootstrap", to: "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2.5.4/dist/umd/popper.min.js"
