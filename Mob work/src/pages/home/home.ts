import { Component } from '@angular/core';
import { NavController, NavParams } from 'ionic-angular';
import {GetJsonProvider} from "../../providers/get-json/get-json";


class Day{
  day:string;
  subjects:Subject[];
}
class Subject{
  timeStart:string;
  subject:string;
  teacher:string;
  lectureHall:string;
}

@Component({
  selector: 'page-home',
  templateUrl: 'home.html',

})


export class HomePage {
  daysArray:Day[];
  constructor(public navCtrl: NavController, public jp:GetJsonProvider, public navParam: NavParams) {
  }
  ionViewDidLoad() {
    this.jp.getData().subscribe(data=>this.daysArray = data['days']);
  }
}
