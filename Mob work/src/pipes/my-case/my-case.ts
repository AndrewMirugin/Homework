import { Pipe, PipeTransform } from '@angular/core';

/**
 * Generated class for the MyCasePipe pipe.
 *
 * See https://angular.io/api/core/Pipe for more info on Angular Pipes.
 */
@Pipe({
  name: 'myCasePipe',
  pure: false
})
export class MyCasePipe implements PipeTransform {
  /**
   * Takes a value and makes it lowercase.
   */
  transform(value: any[], register?: string) {
    if (register == 'upper') {
      for (let i = 0; i < value.length; i++)
        value[i] = value[i].toUpperCase();
    }
    else {
      for (let i = 0; i < value.length; i++)
        value[i] = value[i].toLowerCase();
    }
    return value;
  }
}
