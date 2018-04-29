import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';


@Component({
  selector: 'page-settings',
  templateUrl: 'settings.html',
})
export class SettingsPage {

  constructor(public navCtrl: NavController, public navParams: NavParams) {
  }

  goHome(value: {groupNumber: number, kursNumber: number, teacherFam:string }){
    //this.navCtrl.pop();
  }

}
