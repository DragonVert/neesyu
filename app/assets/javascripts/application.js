//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require jquery-fileupload/basic
//= require cloudinary/jquery.cloudinary
//= require attachinary
//= require_tree .

// fonction pour rendre une ligne de table clickable
jQuery(function($) {
$("tr[data-link]").click(function() {
window.location = this.dataset.link
});
})
