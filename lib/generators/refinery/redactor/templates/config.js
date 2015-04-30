/*
 * This is your config file for the Redactor editor within Refinery ONLY.
 * It accepts any of the settings listed here: http://imperavi.com/redactor/docs/settings/
 *
 * NOTE: Image and file upload settings are already set for you in order to support
 * uploading to Refinery (you don't need to provide settings for these here.
 */
RefineryRedactor.CONFIG = {
  lang: 'en',
  direction: 'ltr', // ltr or rtl

  // By default the following plugins are available by default:
  // - textdirection
  // - fullscreen
  // - clips
  // - fontfamily
  // - fontsize
  // - fontcolor
  plugins: false, // array

  focus: false,
  focusEnd: false,

  placeholder: false,

  visual: true,
  tabindex: false,

  minHeight: false,
  maxHeight: false,

  linebreaks: false,
  replaceDivs: true,
  paragraphize: true,
  cleanStyleOnEnter: false,
  enterKey: true,

  cleanOnPaste: true,
  cleanSpaces: true,
  pastePlainText: false,

  autosave: false, // false or url
  autosaveName: false,
  autosaveInterval: 60, // seconds
  autosaveOnChange: false,

  linkTooltip: true,
  linkProtocol: 'http',
  linkNofollow: false,
  linkSize: 50,

  imageEditable: true,
  imageLink: true,
  imagePosition: true,
  imageFloatMargin: '10px',
  imageResizable: true,

  dragImageUpload: true,

  convertLinks: true,
  convertUrlLinks: true,
  convertImageLinks: true,
  convertVideoLinks: true,

  preSpaces: 4, // or false
  tabAsSpaces: false, // true or number of spaces
  tabFocus: true,

  scrollTarget: false,

  toolbar: true,
  toolbarFixed: true,
  toolbarFixedTarget: document,
  toolbarFixedTopOffset: 0, // pixels
  toolbarExternal: false, // ID selector
  toolbarOverflow: false,

  buttonSource: true,
  buttons: ['html', 'formatting', 'bold', 'italic', 'deleted', 'unorderedlist', 'orderedlist',
    'outdent', 'indent', 'image', 'file', 'link', 'alignment', 'horizontalrule'], // + 'underline'

  buttonsHide: [],
  buttonsHideOnMobile: [],

  formatting: ['p', 'blockquote', 'pre', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6'],
  formattingAdd: false,

  tabifier: true,

  deniedTags: ['html', 'head', 'link', 'body', 'meta', 'script', 'style', 'applet'],
  allowedTags: false, // or array

  removeComments: false,
  removeDataAttr: false,

  removeAttr: false, // or multi array
  allowedAttr: false, // or multi array

  removeWithoutAttr: ['span'], // or false
  removeEmpty: ['p'], // or false;

  activeButtons: ['deleted', 'italic', 'bold', 'underline', 'unorderedlist', 'orderedlist',
    'alignleft', 'aligncenter', 'alignright', 'justify'],
  activeButtonsStates: {
    b: 'bold',
    strong: 'bold',
    i: 'italic',
    em: 'italic',
    del: 'deleted',
    strike: 'deleted',
    ul: 'unorderedlist',
    ol: 'orderedlist',
    u: 'underline'
  }
};


