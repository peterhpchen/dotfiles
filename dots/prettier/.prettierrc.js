/**
 * @see https://prettier.io/docs/configuration
 * @type {import("prettier").Config}
 */
const config = {
  // // https://github.com/prettier/prettier/issues/15255
  // // editorconfig options is a Node.js API configuration option object, and not a configuration file option
  // // Use --no-editorconfig to disable EditorConfig settings in CLI
  // editorconfig: true,
  singleQuote: true,
  htmlWhitespaceSensitivity: 'strict',
  // // The options below config in EditorConfig, do not config here
  // endOfLine: 'lf', // `end_of_line`
  // useTabs: false, // `indent_style`
  // tabWidth: 2, // `indent_size` / `tab_width`
  // printWidth: 80, // `max_line_length`
};
