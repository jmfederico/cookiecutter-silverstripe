<header>
    <div>
        <a href="$BaseHref">
            <h1>$SiteConfig.Title</h1>
            <% if $SiteConfig.Tagline %>
            <p>$SiteConfig.Tagline</p>
            <% end_if %>
        </a>
        <% include Navigation %>
        $SearchForm
    </div>
</header>
