/*
 * Copyright (C) 2016 Actor LLC. <https://actor.im>
 */

import React, { Component, PropTypes } from 'react';
import { Element, Link } from 'react-scroll';
import { emoji, getEmojiCategories } from '../../utils/EmojiUtils';
import EmojiText from './EmojiText.react';

class Emojis extends Component {
  static propTypes = {
    onSelect: PropTypes.func.isRequired
  }

  constructor(props) {
    super(props);

    this.state = {
      title: 'Emoji'
    };

    this.onSetActive = this.onSetActive.bind(this);
    this.onTabMouseEnter = this.onTabMouseEnter.bind(this);
  }

  onSetActive(title) {
    this.setState({ title });
  }

  onTabMouseEnter(event) {
    event.stopPropagation();
    event.preventDefault();
    event.target.click();
  }

  render() {
    const { title } = this.state;

    const emojis = [];
    const emojiTabs = [];
    const emojiCategories = getEmojiCategories();

    emojiCategories.forEach((category) => {
      const currentCategoryEmojis = [];

      emojiTabs.push(
        <Link
          to={category.title}
          spy
          offset={30}
          duration={300}
          key={category.title}
          onSetActive={() => this.onSetActive(category.title)}
          onMouseEnter={this.onTabMouseEnter}
          containerId="emojiContainer"
          className="emojis__header__tabs__tab"
          activeClass="emojis__header__tabs__tab--active"
        >
          <EmojiText text={category.icon} />
        </Link>
      );

      category.data.forEach((emojiChar) => {
        emoji.colons_mode = true;
        const emojiColon = emoji.replace_unified(emojiChar);
        emoji.colons_mode = false;

        currentCategoryEmojis.push(
          <EmojiText
            key={emojiChar}
            text={category.icon}
            onClick={() => this.props.onSelect(emojiColon)}
          />
        );
      });

      emojis.push(
        <Element name={category.title} key={category.title}>
          <p>{category.title}</p>
          {currentCategoryEmojis}
        </Element>
      );
    });

    return (
      <div className="emojis">
        <header className="emojis__header">
          <p className="emojis__header__title">
            {title}
          </p>
          <div className="emojis__header__tabs pull-right">
            {emojiTabs}
          </div>
        </header>
        <div className="emojis__body" id="emojiContainer">
          {emojis}
        </div>
      </div>
    )
  }
}

export default Emojis;
