<div>
    <article>
        <h1>$Title</h1>
        <% if $Query %>
            <p><strong>You searched for &quot;{$Query}&quot;</strong></p>
        <% end_if %>
        <% if $Results %>
        <ul id="SearchResults">
            <% loop $Results %>
            <li>
                <a href="$Link">
                    <% if $MenuTitle %>
                    $MenuTitle
                    <% else %>
                    $Title
                    <% end_if %>
                </a>
                <p>$Content.LimitWordCountXML</p>
                <a href="$Link" title="Read more about &quot;{$Title}&quot;">
                    Read more about &quot;{$Title}&quot;...
                </a>
            </li>
            <% end_loop %>
        </ul>
        <% else %>
        <p>Sorry, your search query did not return any results.</p>
        <% end_if %>

        <div id="PageNumbers">
            <% if $Results.NotLastPage %>
            <a href="$Results.NextLink" title="View the next page">Next</a>
            <% end_if %>
            <span>
                <% loop $Results.Pages %>
                    <% if $CurrentBool %>
                    $PageNum
                    <% else %>
                    <a href="$Link" title="View page number $PageNum">$PageNum</a>
                    <% end_if %>
                <% end_loop %>
            </span>
            <% if $Results.NotFirstPage %>
            <a href="$Results.PrevLink" title="View the previous page">Prev</a>
            <% end_if %>
            <p>Page $Results.CurrentPage of $Results.TotalPages</p>
        </div>
    </article>
    $Form
</div>
