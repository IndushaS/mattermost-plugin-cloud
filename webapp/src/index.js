import UserAttribute from './components/user_attribute';
import Reducer from './reducers';
import {id as pluginId} from './manifest';

class Plugin {
    async initialize(registry) {
        registry.registerReducer(Reducer);

        registry.registerPopoverUserAttributesComponent(UserAttribute);
    }

    deinitialize() {
        //eslint-disable-next-line no-console
        console.log('Shutting down cloud plugin');
    }
}

global.window.registerPlugin(pluginId, new Plugin());
