<div class="container">
    <div class="row">
        <div class="col-12">
            <h1>$Title</h1>

            <div class="blog-image">
                <% with $Photo.ScaleWidth(1100) %>
                    <img src="$URL" class="img-fluid blog-header" alt="$Title" width="$Width" height="$Height"/>
                <% end_with %>
            </div>
            $Content
            <hr />
            <% if $Brochure %>
                <div class="row">
                    <div class="col-md-6">
                        <div class="brochure-block">
                            <h3>Brochures</h3>
                            <% with $Brochure %>
                                <a href="$URL" target="_blank">Download brochure - $Title ($Extension, $Size)</a>
                            <% end_with %>
                        </div>
                    </div>
                </div>
            <% end_if %>
        </div>
    </div>
</div>