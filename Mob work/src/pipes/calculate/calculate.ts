import { Pipe, PipeTransform } from '@angular/core';

/**
 * Generated class for the CalculatePipe pipe.
 *
 * See https://angular.io/api/core/Pipe for more info on Angular Pipes.
 */
@Pipe({
  name: 'calculatePipe',
})
export class CalculatePipe implements PipeTransform {
  /**
   * Takes a value and makes it lowercase.
   */
  transform(value: string, second: string):string {
    if(value!==undefined && second!==undefined) {
      let fir = parseFloat(value);
      let sec = parseFloat(second);
      return isNaN(fir+sec)? "" :(fir+sec).toString();
    }
    else {
      return "";
    }
  }
}
