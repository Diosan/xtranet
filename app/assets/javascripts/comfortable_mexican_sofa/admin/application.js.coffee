#= require tinymce

window.CMS.wysiwyg = ->
  tinymce.init
    selector: 'textarea[data-cms-rich-text]'
    # any additional tinymce configuration can go here
