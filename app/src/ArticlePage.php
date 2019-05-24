<?php

namespace CMS;

use Page;
use SilverStripe\Forms\DateField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\TextField;
use Silverstripe\Assets\Image;
use Silverstripe\Assets\File;
use SilverStripe\AssetAdmin\Forms\UploadField;

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
     * Map certain fields to classes
     */
    private static $has_one = [
        'Photo'    => Image::class,
        'Brochure' => File::class,
    ];

    private static $owns = [
        'Photo',
        'Brochure',
    ];

    /**
     * Return the CMS fields
     *
     * @return \SilverStripe\Forms\FieldList
     */
    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        # Add new fields to the CMS
        $fields->addFieldToTab('Root.Main', DateField::create('Date', 'The Date of the Article'), 'Content');
        $fields->addFieldToTab(
            'Root.Main',
            TextareaField::create('Teaser')
                ->setDescription('This is the summary that appears on the article list page'),
            'Content'
        );
        $fields->addFieldToTab('Root.Main', TextField::create('Author', 'The Author of the Article'), 'Content');

        # Add upload fields to the CMS on their own tab
        $fields->addFieldToTab('Root.Attachments', $photo = UploadField::create('Photo'));
        $fields->addFieldToTab('Root.Attachments', $brochure = UploadField::create('Brochure', 'Travel brochure, optional (PDF only)'));

        # Set the max file upload size
        $sizeMB = 10;
        $size   = $sizeMB * 1024 * 1024;

        # Set folder names for the photos
        $photo->setFolderName('travel-photos')
            ->getValidator()
            ->setAllowedMaxFileSize($size);

        # Allow only PDF extensions for the brochure and set folder name
        $brochure->setFolderName('travel-brochures')
            ->getValidator()
            ->setAllowedExtensions(['pdf']);

        return $fields;
    }
}