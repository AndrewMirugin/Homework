import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';


@Injectable()
export class GetJsonProvider {
  myurl:string = '../assets/source.json';
  constructor(public http: HttpClient) {
  }
  getData(){
    return this.http.get(this.myurl);
  }

}
