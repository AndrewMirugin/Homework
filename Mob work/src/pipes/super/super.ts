import { Pipe, PipeTransform } from '@angular/core';

/**
 * Generated class for the SuperPipe pipe.
 *
 * See https://angular.io/api/core/Pipe for more info on Angular Pipes.
 */
@Pipe({
  name: 'superPipe',
  pure: false
})
export class SuperPipe implements PipeTransform {
  /**
   * Takes a value and makes it lowercase.
   */
  transform(data:any[],fterm: string) {
    return data.filter((item) => {
      return (item.toLowerCase()
        .indexOf(fterm.toLowerCase())==0)});//если мы жмём на крестик мы пытаемся привести к нижнему регистру пустоту(там ничего не остаётся)
  }
}
