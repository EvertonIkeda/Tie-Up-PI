import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule } from '@angular/forms';

import { IonicModule } from '@ionic/angular';

import { ProfileConfigPageRoutingModule } from './profile-config-routing.module';

import { ProfileConfigPage } from './profile-config.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ProfileConfigPageRoutingModule
  ],
  declarations: [ProfileConfigPage]
})
export class ProfileConfigPageModule {}
