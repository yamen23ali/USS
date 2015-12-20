$(".choose_photo").change(function ()
{
     var parent = $(this).parents(".fileinput");

     var photo_info = $( parent ).find(".photo_info");

     removePhoto( photo_info );
});

$(".my-remove").click( function ()
{
     var parent = $(this).parents(".fileinput-exists").find(".thumbnail");
     
     // remove photo
     var photo_info = $( parent ).find(".photo_info");

     removePhoto( photo_info );
     
     // put missing photo instead
     var photo = $(".missing_photo_block").clone();

     $(photo).css('display', 'block');
     $(photo).removeClass("missing_photo_block");

     $this = $(this);

     setTimeout(function(){
               $(photo).appendTo( $( parent )); 
     },30);
});

function removePhoto( photo_info )
{
     var asset_id = $( photo_info ).attr( 'data-asset-id' );
     var photo_id = $( photo_info ).attr( 'data-photo-id' );

     var url = '/assets/' + asset_id + '/' + photo_id;

     $.ajax({
          url: url,
          type: 'DELETE',
          dataType: 'json',

          beforeSend: function(xhr) {xhr.setRequestHeader('X-CSRF-Token', $('meta[name="csrf-token"]').attr('content'))},

          success: function(result) {
          }
     });
}