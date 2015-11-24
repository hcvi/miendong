$(document).ready(function() {
    $('#list').click(function(event){
      event.preventDefault();
      $('#products .item').addClass('list-group-item');
    });
    $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
    $("#add_image").click(function(event){
      event.preventDefault();
      id = $("#images").children().length
      $("#images").append(addImage(id))
    })
    $(".del-image").click(function (event) {
      id = $(this).attr("data-id")
      console.log(id)
      $("#panel_image_" + id).hide()
      $("#product_images_attributes_" + id + "__destroy").val(true)
    })

    function addImage(id){
      id = id - 1
      var strVar="";
      strVar += "<div id=\"panel_image_" + id + "\" class=\"panel panel-info\">";
      strVar += "  <div class=\"panel-heading\">Image " + (id + 1) + " <span class=\"pull-right\"><button type=\"button\" data-id=\"" + id + "\" class=\"del-image btn btn-danger btn-sm\">Del<\/button><\/span><\/div>";
      strVar += "  <div class=\"panel-body\">";
      strVar += "  <input id=\"product_images_attributes_" + id + "__destroy\" name=\"product[images_attributes][" + id + "][_destroy]\" type=\"hidden\" value=\"false\">"
      strVar += "  <div class=\"string input optional stringish form-group\" id=\"product_images_attributes_" + id + "_title_input\"><span class=\"form-label\"><label class=\" control-label\" for=\"product_images_attributes_" + id + "_title\">Title<\/label><\/span><span class=\"form-wrapper\"><input class=\"form-control\" id=\"product_images_attributes_" + id + "_title\" maxlength=\"255\" name=\"product[images_attributes][" + id + "][title]\" type=\"text\" value=\" \"><\/span><\/div>";
      strVar += "  <div class=\"string input optional stringish form-group\" id=\"product_images_attributes_" + id + "_url_thumb_input\"><span class=\"form-label\"><label class=\" control-label\" for=\"product_images_attributes_" + id + "_url_thumb\">Url thumb<\/label><\/span><span class=\"form-wrapper\"><input class=\"form-control\" id=\"product_images_attributes_" + id + "_url_thumb\" maxlength=\"2083\" name=\"product[images_attributes][" + id + "][url_thumb]\" type=\"text\"><\/span><\/div>";
      strVar += "  <div class=\"url input optional stringish form-group\" id=\"product_images_attributes_" + id + "_url_input\"><span class=\"form-label\"><label class=\" control-label\" for=\"product_images_attributes_" + id + "_url\">Url<\/label><\/span><span class=\"form-wrapper\"><input class=\"form-control\" id=\"product_images_attributes_" + id + "_url\" maxlength=\"2083\" name=\"product[images_attributes][" + id + "][url]\" type=\"url\" value=\"\"><\/span><\/div>";
      strVar += "  <div class=\"string input optional stringish form-group\" id=\"product_images_attributes_" + id + "_position_input\"><span class=\"form-label\"><label class=\" control-label\" for=\"product_images_attributes_" + id + "_position\">Position<\/label><\/span><span class=\"form-wrapper\"><input class=\"form-control\" id=\"product_images_attributes_" + id + "_position\" maxlength=\"255\" name=\"product[images_attributes][" + id + "][position]\" type=\"text\"><\/span><\/div>";
      strVar += "  <\/div>";
      strVar += "<\/div>";
      return strVar;
    }
});


