import { NgModule } from '@angular/core';
import { SuperPipe } from './super/super';
import { MyCasePipe } from './my-case/my-case';
import { CalculatePipe } from './calculate/calculate';
import { EmailGeneratorPipe } from './email-generator/email-generator';
@NgModule({
	declarations: [SuperPipe,
    MyCasePipe,
    CalculatePipe,
    EmailGeneratorPipe],
	imports: [],
	exports: [SuperPipe,
    MyCasePipe,
    CalculatePipe,
    EmailGeneratorPipe]
})
export class PipesModule {}
