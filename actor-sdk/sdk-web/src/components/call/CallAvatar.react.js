/*
* Copyright (C) 2015-2016 Actor LLC. <https://actor.im>
*/

import React, {Component, PropTypes} from 'react';
import { FormattedMessage } from 'react-intl';
import classNames from 'classnames';

import { CallStates } from '../../constants/ActorAppConstants';

import AvatarItem from '../common/AvatarItem.react';

class CallAvatar extends Component {
  static propTypes = {
    small: PropTypes.bool,
    peerInfo: PropTypes.shape({
      name: PropTypes.string.isRequired,
      avatar: PropTypes.string,
      placeholder: PropTypes.string.isRequired
    }).isRequired,
    callState: PropTypes.oneOf([
      CallStates.CALLING,
      CallStates.IN_PROGRESS,
      CallStates.CONNECTING,
      CallStates.ENDED
    ]).isRequired,
    onClick: PropTypes.func
  };

  renderAnimation() {
    switch (this.props.callState) {
      case CallStates.CALLING:
      case CallStates.CONNECTING:
        const className = classNames('call__avatar__rings', {
          'call__avatar__rings--small': this.props.small
        });

        return (
          <div className={className}>
            <div/><div/><div/>
          </div>
        );
        break;
      default:
        return null;
    }
  }

  render() {
    const { peerInfo, small, onClick } = this.props;

    return (
      <div className="call__avatar">
        <AvatarItem
          size={small ? 'large' : 'big'}
          title={peerInfo.name}
          image={peerInfo.avatar}
          placeholder={peerInfo.placeholder}
          onClick={onClick}
        />
        {this.renderAnimation()}
      </div>
    );
  }
}

export default CallAvatar;
