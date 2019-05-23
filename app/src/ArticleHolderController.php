<?php

namespace CMS;

use PageController;

class ArticleHolderController extends PageController
{
    /**
     * Trim the content of an article
     *
     * @param $content
     *
     * @return bool|string
     */
    public function trimContent($content)
    {
        return strip_tags(substr($content, 0, 100));
    }
}