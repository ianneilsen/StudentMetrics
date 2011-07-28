$(function() {
  $("#studentnames th a, #studentnames .pagination a").live("click", function() {
    $.getScript(this.href);
    return false;
  });
  $("#studentnames_search input").keyup(function() {
    $.get($("#studentnames_search").attr("action"), $("#studentnames_search").serialize(), null, "script");
    return false;
  });
});