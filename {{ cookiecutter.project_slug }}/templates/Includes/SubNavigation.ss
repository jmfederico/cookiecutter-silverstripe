<%--Include SidebarMenu recursively --%>
<% if $Children %>
    <ul>
        <% loop $Children %>
            <li class="$LinkingMode">
                <a href="$Link" class="$LinkingMode" title="Go to the $Title.XML page">
                    <span class="arrow">&rarr;</span>
                    <span class="text">$MenuTitle.XML</span>
                </a>
                <% if $Children %>
                    <ul>
                        <% include SubNavigation %>
                    </ul>
                <% end_if %>
            </li>
        <% end_loop %>
    </ul>
<% end_if %>
