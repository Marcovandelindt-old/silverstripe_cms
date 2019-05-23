<div class="container">
    <div class="row">
        <div class="col-12">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    $Breadcrumbs
                </ol>
            </nav>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-sm-12">
            <div class="content">
                <h1>$Title</h1>
                $Content
                <br />
                $Form
            </div>
        </div>
        <div class="col-md-4 col-sm-12">
            <% if $Menu(2) %>
                <div class="sub-navigation">
                    <h3>In this section</h3>
                    <ul class="subnav">
                        <% loop $Menu(2) %>
                            <li class="nav-item"><a class="nav-link $LinkingMode" href="$Link">$MenuTitle</a></li>
                        <% end_loop %>
                    </ul>
                </div>
            <% end_if %>
        </div>
    </div>
</div>
