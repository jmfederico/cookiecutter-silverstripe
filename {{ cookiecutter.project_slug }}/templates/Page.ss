<!DOCTYPE html>
<html lang="$ContentLocale">
<head>
    <% base_tag %>
    <title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    $MetaTags(false)
</head>
<body class="$ClassName.ShortName">
<% include Header %>
<div>
    $Layout
</div>
</body>
</html>
