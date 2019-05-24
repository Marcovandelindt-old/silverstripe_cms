<div class="container">
    <div class="row">
        <div class="col-md-12">
            <h1>$Title</h1>
            $Content
        </div>
        <br />
        <div class="col-md-12">
            <div class="row">
                <% loop $Children %>
                    <div class="col-md-4">
                        <div class="card">
                            <% with $Photo.Fit(500,400) %>
                                <img src="$URL" class="card-img-top" alt="$Title"/>
                            <% end_with %>
                            <div class="card-body">
                               <h5 class="card-title">$Title</h5>
                                <i class="fas fa-calendar-alt"></i> $Date.Nice
                                <% if $Teaser %>
                                    <p class="card-text">$Top.trimContent($Teaser)</p>
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
    </div>
</div>