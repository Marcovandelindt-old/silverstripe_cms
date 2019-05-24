<?php

namespace CMS;

use Page;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;

class ArticlePage extends Page
{
    private static $db = [
        'Date'   => 'Date',
        'Teaser' => 'Text',
        'Author' => 'Varchar',
    ];

    /**
     * Check if the page can be root
     *
     * @var bool
     */
    private static $can_be_root = false;

    /**
     * Return the CMS fields
     *
     * @return \SilverStripe\Forms\FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->addFieldToTab('Root.Main', DateField::create('Date', 'The Date of the Article'), 'Content');
        $fields->addFieldToTab(
            'Root.Main',
            TextareaField::create('Teaser')
                ->setDescription('This is the summary that appears on the article list page'),
            'Content'
        );
        $fields->addFieldToTab('Root.Main', TextField::create('Author', 'The Author of the Article'), 'Content');

        return $fields;
    }
}