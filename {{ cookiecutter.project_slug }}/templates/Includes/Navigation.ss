<nav>
    <ul>
        <% loop $Menu(1) %>
            <li class="$LinkingMode">
                <a href="$Link" title="$Title.XML">$MenuTitle.XML</a>
                <% include SubNavigation %>
            </li>
        <% end_loop %>
    </ul>
</nav>
