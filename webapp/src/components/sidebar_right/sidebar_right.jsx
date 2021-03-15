// Copyright (c) 2015-present Mattermost, Inc. All Rights Reserved.
// See LICENSE.txt for license information.

import React from 'react';
import PropTypes from 'prop-types';
import Scrollbars from 'react-custom-scrollbars';


export function renderView(props) {
    return (
        <div
            {...props}
            className='scrollbar--view'
        />);
}

export default class SidebarRight extends React.PureComponent {
    static propTypes = {
        rhsState: PropTypes.string,
        actions: PropTypes.shape({
            setVisible: PropTypes.func.isRequired,
            telemetry: PropTypes.func.isRequired,
        }).isRequired,
    };

    constructor(props) {
        super(props);

        this.state = {};
    }

    componentDidMount() {
        this.props.actions.setVisible(true);
    }

    componentWillUnmount() {
        this.props.actions.setVisible(false);
    }



    render() {
        return (
          <div>
              <p>Hello</p>
          </div>
        );
    }
}
