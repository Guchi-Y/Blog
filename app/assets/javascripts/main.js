$(function() {
  $(".edit_button").click(function() {
    $("#dl").dialog({
      dialogClass:"wkDialogClass",
      modal:true,
      title:"かくにん",
      buttons:[
       {text: "はい",
        class:"wkBtnOk",
        click: function() {$(this).dialog("close");}
       },
       {text: "いいえ",
        class:"wkBtnNg",
        click: function() {$(this).dialog("close");}
       }]
    });
  });
});