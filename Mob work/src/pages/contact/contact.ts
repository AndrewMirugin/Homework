import { Component } from '@angular/core';
import {AlertController, ItemSliding} from 'ionic-angular';

@Component({
  selector: 'page-contact',
  templateUrl: 'contact.html'

})
export class ContactPage {
  items: string[] =['Apple','Banana','Orange','Tomatoes'];
  fterm:string='';
  constructor(public alertCtrl: AlertController) {

  }
  doAdd(){
    let alert = this.alertCtrl.create({
      title: "Creting of a new meal",
      inputs: [
        {
          name: 'NewMeal',
          placeholder: 'Insert a new meal',
        }],
      buttons: [
        {
          text: 'Cancel',
          role: 'cancel'
          },
        {
          text: 'Add',
          handler: data => {
            if (data.NewMeal!=""){
              this.items.push(data.NewMeal);
            }
          }
        }
      ]
    });
      alert.present();
    }
  doDelete(item: string,itm: ItemSliding){
    let index: number = this.items.indexOf(item);
    this.items.splice(index, 1);
    itm.close();
  }
  doRose(){
    let alert = this.alertCtrl.create({message: '<img src="../../assets/imgs/Rose.jpg">'});
    alert.present();
  }
  getItem(evnt: any){
    this.fterm=evnt.target.value;
  }


}
