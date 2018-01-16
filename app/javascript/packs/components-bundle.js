import ReactOnRails from 'react-on-rails';

import PatronList from '../bundles/Components/PatronList';
import CookerProfileHome from '../bundles/Components/CookerProfileHome';

// This is how react_on_rails can see the HelloWorld in the browser.
ReactOnRails.register({
  PatronList, CookerProfileHome,
});
