import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-map',
  templateUrl: './map.page.html',
  styleUrls: ['./map.page.scss'],
})
export class MapPage implements OnInit {

  lista_perto = [
    {
      nome: "Maria",
      ocupacao: "Dá aulas de matemática",
      imagem: "../../assets/images/woman.png"
    },
    {
      nome: "Carlos",
      ocupacao: "Vende brownies",
      imagem: "../../assets/images/man.png"
    },
    {
      nome: "José",
      ocupacao: "Vende brownies",
      imagem: "../../assets/images/man.png"
    },
    {
      nome: "Carolina",
      ocupacao: "Babá",
      imagem: "../../assets/images/woman.png"
    },
    {
      nome: "Arthur",
      ocupacao: "Dá aulas de yoga",
      imagem: "../../assets/images/man.png"
    },
  ]

  constructor() { }

  ngOnInit() {
  }

}
