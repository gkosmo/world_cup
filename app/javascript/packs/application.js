import "bootstrap";
import {startMe } from './live_scores.js';
import { throwMap } from './map.js';
throwMap();
setInterval(startMe,120000);
