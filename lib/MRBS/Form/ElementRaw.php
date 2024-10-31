<?php
declare(strict_types=1);
namespace MRBS\Form;

class ElementRaw extends Element
{
    private $html;

    public function __construct(string $html)
    {
        parent::__construct('div');  // Use a generic tag
        $this->html = $html;
    }

    public function render(): void
    {
        // Output the raw HTML directly
        echo $this->html;
    }
}