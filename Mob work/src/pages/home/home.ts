import { Component } from '@angular/core';
import {NavController} from 'ionic-angular';
import {MyServiceProvider} from "../../providers/my-service/my-service";


export class Person{
  id:number;
  name:string;
  job:string;
  salary:number;
}
class Comment{
  rating:number;
  text:string;
  author:string;
}
export class Dishes{
    id:number;
    name:string;
    category:string;
    label:string;
    price:number;
    description:string;
    comment:Comment;
}
@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {
  parray:Dishes[];
  constructor(public navCtrl: NavController, public ms:MyServiceProvider ) {

  }
  ionViewDidLoad(){
    this.ms.getData().subscribe(data=>this.parray = data['dishes']);
  }

}
