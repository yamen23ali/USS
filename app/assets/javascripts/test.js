$(".choose_photo").change(function ()
{
     var parent = $(this).closest(".fileinput-new");

     var photo_info = $( parent ).find(".existing").find(".photo_info");

     var asset_id = $( photo_info ).attr( 'data-asset-id' );
     var photo_id = $( photo_info ).attr( 'data-photo-id' );

     var url = '/assets/' + asset_id + '/' + photo_id;

     alert(url);

     $.ajax({
          url: url,
          type: 'DELETE',
          dataType: 'json',

          beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},

          success: function(result) {
               alert("Done!!");
               //alert(result);
          }
     });
});