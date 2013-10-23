var Song = {
  setSongClicks: function() {
    $('.play-song-link').click(function( event ){
      event.preventDefault();
      var song_html = $(this).attr('href');
      $('.player-box').html(song_html);
    });
  },
  
  setPlayerWidth: function() {
    var width = window.outerWidth;
    $('.player-box').css('width',width);
  }
}

$(function() {
  Song.setSongClicks();  
  Song.setPlayerWidth();
  $(window).resize(function() {
    Song.setPlayerWidth();
  });
})
