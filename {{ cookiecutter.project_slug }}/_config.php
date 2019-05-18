<?php

use SilverStripe\View\Requirements;
use SilverStripe\ORM\Search\FulltextSearchable;

// Include Webpack files.
Requirements::themedJavascript('webpack/dist/main.js');
try {
    Requirements::themedCss('webpack/dist/main.css');
} catch (InvalidArgumentException $exception) {
}

FulltextSearchable::enable();
