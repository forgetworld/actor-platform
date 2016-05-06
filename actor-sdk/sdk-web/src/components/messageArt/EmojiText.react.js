import React, { Component, PropTypes } from 'react';
import { emoji } from '../../utils/EmojiUtils';

class EmojiText extends Component {
  static propTypes = {
    text: PropTypes.string.isRequired
  };

  render() {
    const { text, ...props } = this.props;

    emoji.change_replace_mode('css');
    const __html = emoji.replace_colons(text);

    return (
      <span {...props} dangerouslySetInnerHTML={{ __html }} />
    );
  }
}

export default EmojiText;
