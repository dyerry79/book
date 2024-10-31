<?php
declare(strict_types=1);
namespace MRBS\Form;

class ElementText extends Element
{
  public function __construct(string $text = "", bool $raw = false)
  {
    parent::__construct('');  // No tag for text
    parent::setText($text, false, $raw);  // Use the inherited setText method
  }

  public function toHTML(bool $no_whitespace = false) : string
  {
    return parent::toHTML($no_whitespace);  // Inherit the parent method for rendering
  }
}