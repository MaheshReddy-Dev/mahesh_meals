# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
<div class="flash-container">
  <% flash.each do |flash_type, message| %>
    <div class="flash-message <%= flash_type %>"
      data-controller="removals"
      data-action="animationend->removals#remove"
    >
      <%= message %>
    </div>
  <% end %>
</div>
