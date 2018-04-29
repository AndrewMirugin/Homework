import { Component } from '@angular/core';

import { AboutPage } from '../about/about';
import { ContactPage } from '../contact/contact';
import { HomePage } from '../home/home';
import { SettingsPage } from '../settings/settings';
import {AlertController} from "ionic-angular";
import {SomeContentPage} from "../some-content/some-content";

@Component({
  templateUrl: 'tabs.html'
})
export class TabsPage {

  tab1Root = HomePage;
  tab2Root = AboutPage;
  tab3Root = ContactPage;
  tab4Root = SettingsPage;
  tab5Root=SomeContentPage;

  constructor(public alertCtrl: AlertController) {

  }
}

