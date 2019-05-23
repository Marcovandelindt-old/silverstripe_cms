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
                            <img src="http://placehold.it/766x515" class="card-img-top" alt="..." />
                            <div class="card-body">
                               <h5 class="card-title">$Title</h5>
                                <i class="fas fa-calendar-alt"></i> 23-05-2019
                                <p class="card-text">$Top.trimContent($Content)</p>
                                <a href="$Link" class="btn btn-secondary">Read more</a>
                            </div>
                        </div>
                    </div>
                <% end_loop %>
            </div>
        </div>
    </div>
</div>