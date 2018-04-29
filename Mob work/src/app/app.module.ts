import { NgModule, ErrorHandler } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { IonicApp, IonicModule, IonicErrorHandler } from 'ionic-angular';
import { MyApp } from './app.component';
import { AboutPage } from '../pages/about/about';
import { ContactPage } from '../pages/contact/contact';
import { HomePage } from '../pages/home/home';
import { TabsPage } from '../pages/tabs/tabs';
import { SettingsPage } from '../pages/settings/settings';

import { StatusBar } from '@ionic-native/status-bar';
import { SplashScreen } from '@ionic-native/splash-screen';

import {SuperPipe} from '../pipes/super/super';
import {MyCasePipe} from "../pipes/my-case/my-case";
import {HttpClientModule} from "@angular/common/http";
import { MyServiceProvider } from '../providers/my-service/my-service';
import {CalculatePipe} from "../pipes/calculate/calculate";
import {SomeContentPage} from "../pages/some-content/some-content";
import {EmailGeneratorPipe} from "../pipes/email-generator/email-generator";

@NgModule({
  declarations: [
    MyApp,
    AboutPage,
    ContactPage,
    HomePage,
    TabsPage,
    SettingsPage,
    SomeContentPage,
    SuperPipe,
    MyCasePipe,
    CalculatePipe,
    EmailGeneratorPipe,

  ],
  imports: [
    BrowserModule,
    IonicModule.forRoot(MyApp),
    HttpClientModule
  ],
  bootstrap: [IonicApp],
  entryComponents: [
    MyApp,
    AboutPage,
    ContactPage,
    HomePage,
    TabsPage,
    SettingsPage,
    SomeContentPage
  ],
  providers: [
    StatusBar,
    SplashScreen,
    {provide: ErrorHandler, useClass: IonicErrorHandler},
    MyServiceProvider
  ]
})
export class AppModule {}
