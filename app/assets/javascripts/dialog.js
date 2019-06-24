$(function() {
  var html = `<div class="confirmation">
                <h1>
                とうこうが さくじょ されました
                </h1>
                <a id="return_index_button" class="button" href="/">とうこうがめんへ</a>
              </div>`
  
  $(".delete_button").on("click", function() {
    var postId   =  $(this).attr("data-post-id");
    
    $("#dl").dialog({
      dialogClass:"wkDialogClass",
      modal:true,
      title:"かくにん",
      buttons:[
        {text: "はい",
          class:"wkBtnOk",
          click: function() {
            
            $.ajax({
              url: `/posts/${postId}`,
              type: 'DELETE'
            })
            
            $(".contents").html(html);
            $(this).dialog("close");
          }
        },
        
        {text: "いいえ",
        class:"wkBtnNg",
        click: function() {$(this).dialog("close");}
      }]
    });
  return false;
  });
});