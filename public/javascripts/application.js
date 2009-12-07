// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults


function getFeed(elt) {
  jQuery.getFeed({
    url: '/feeds/fetch.xml?feed=' + elt.href,
    success: function(feed) {
      
      html_result = '<ul>';
            
      jQuery.each(feed.items, function(i, item) {
        html_result += '<li><a href="' + item.link + '">' + item.title + '</a></li>';
      });
      
      
      html_result += '</ul>'
      
      $(elt).parent().append(html_result);
    },
    failure: function() {
      alert('error');
    }
  });
}

jQuery(function() {
  
  $('a[data-feed=true]').live('click', function(e) {
    e.preventDefault();
    

    if ($(this).parent().children("ul").length > 0) {
      return $(this).parent().children("ul").remove();
    } else {
     return getFeed(this); 
    }
  });
  
});
