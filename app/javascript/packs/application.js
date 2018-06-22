import "bootstrap";
import {startMe } from './live_scores.js';
import { throwMap } from './map.js';
import ProgressiveWebApp from 'pwa-rails';
document.addEventListener( 'turbolinks:load', () => {
    const progressiveWebApp = new ProgressiveWebApp();
})
throwMap();
startMe();
setInterval(startMe,120000);
