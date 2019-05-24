<br />

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>$Title</h1>
            $Content
        </div>
    </div>

    <div class="row">
        <% loop $getLatestArticles(3) %>
            <div class="col-md-4">
                <div class="card">
                    <% with $Photo.Fit(500, 400) %>
                        <img src="<% if $URL %>$URL<% else %>http://placehold.it/326x154<% end_if %>" class="card-img-top" alt="$Title"/>
                    <% end_with %>
                    <div class="card-body">
                        <h5 class="card-title">$Title</h5>
                        <i class="fas fa-calendar-alt"></i> $Date.Nice
                        <% if $Teaser %>
                            <p class="card-text">$Teaser</p>
                        <% else %>
                            <p class="card-text">$Content.LimitCharacters(100)</p>
                        <% end_if %>
                        <a href="$Link" class="btn btn-secondary">Read more</a>
                    </div>
                </div>
            </div>
        <% end_loop %>
    </div>
</div>