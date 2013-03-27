$(function() {
  var $canvas = $("#drawing");
  var context = $canvas[0].getContext('2d');
  var $clear = $("#clear");
  var $form = $("#new_body_part");
  var $hidden = $("#body_part_image");
  var button_is_down = false;

  $(document).mouseup(function(e) {
    if(button_is_down) {
      var x = e.pageX - this.offsetLeft;
      var y = e.pageY - this.offsetTop;
      context.lineTo(x,y);
      context.stroke();
    }
    button_is_down = false;
    $('body').removeClass('noselect');
  });

  $canvas.mousedown(function(e) {
    var x = e.pageX - this.offsetLeft;
    var y = e.pageY - this.offsetTop;
    context.beginPath();
    context.moveTo(x,y);
    $('body').addClass('noselect');
    button_is_down = true;
  });

  $(document).mousemove(function(e) {
    if(button_is_down) {
      var x = e.pageX - $canvas[0].offsetLeft;
      var y = e.pageY - $canvas[0].offsetTop;
      context.lineTo(x,y);
      context.stroke();
    }
  });

  $form.submit(function(e) {
    var url = $canvas[0].toDataURL('image/png');
    console.log("here's url: " + url);
    $hidden.val(url);
  });

  function clearCanvas() {
    context.fillStyle = "#fff";
    context.fillRect(0,0,$canvas.width(),$canvas.height());
  }

  $clear.click(clearCanvas);
  clearCanvas();
});
