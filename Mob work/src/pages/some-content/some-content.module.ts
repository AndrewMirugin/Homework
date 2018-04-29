import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { SomeContentPage } from './some-content';

@NgModule({
  declarations: [
    SomeContentPage,
  ],
  imports: [
    IonicPageModule.forChild(SomeContentPage),
  ],
})
export class SomeContentPageModule {}
