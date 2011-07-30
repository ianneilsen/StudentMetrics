$(function() {
  $("#studetails th a, #studetails.pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#studetails_search input").keyup(function() {
    $.get($("#studetails_search").attr("action"), $("#studetails_search").serialize(), null, "script");
    return false;
  });
});