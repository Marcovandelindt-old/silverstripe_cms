<?php

namespace CMS;

use PageController;

class HomePageController extends PageController
{
    /**
     * Get the latest published articles
     *
     * @param int $limit
     *
     * @return \SilverStripe\ORM\DataList
     */
    public function getLatestArticles($limit = 3)
    {
        return ArticlePage::get()
            ->sort('Created', 'DESC')
            ->limit($limit);
    }
}