import { Pipe, PipeTransform } from '@angular/core';

/**
 * Generated class for the EmailGeneratorPipe pipe.
 *
 * See https://angular.io/api/core/Pipe for more info on Angular Pipes.
 */
@Pipe({
  name: 'emailGenerator',
})
export class EmailGeneratorPipe implements PipeTransform {
  /**
   * Takes a value and makes it lowercase.
   */
  transform(name: string, surname: string, birth:number):string {
    if(name!=undefined){
      name = name.toLowerCase();
      if(surname!=undefined)
      {
        surname=surname.toLowerCase();
        if(birth!=null && birth!=0)
        {
          return isNaN(birth%100)? name + surname  : name + surname + (birth%100).toString();
        }
        else
          return name+surname;
      }
      else
        return name;
    }
    else
      return "";
  }
}
