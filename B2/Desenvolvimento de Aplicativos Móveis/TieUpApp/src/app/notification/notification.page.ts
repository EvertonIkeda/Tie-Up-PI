import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-notification',
  templateUrl: './notification.page.html',
  styleUrls: ['./notification.page.scss'],
})
export class NotificationPage implements OnInit {

  lista_notificacao = [
    {
      imagem: "../../assets/images/man.png",
      nome: "Ricardo",
      notificacao: "Marcou seu anúncio com: 'Tenho Interesse'",
      icone:"flame-outline"
    },
    {
      imagem: "../../assets/images/woman.png",
      nome: "Beatriz",
      notificacao: "Curtiu seu anúncio",
      icone:"heart-outline"
    },
    {
      imagem: "../../assets/images/woman.png",
      nome: "Morgana",
      notificacao: "Marcou seu anúncio com: 'Tenho Interesse'",
      icone:"flame-outline"
    },
    {
      imagem: "../../assets/images/man.png",
      nome: "Everton",
      notificacao: "Apoiou seu anúncio",
      icone:"push-outline"
    },
    {
      imagem: "../../assets/images/man.png",
      nome: "Gustavo",
      notificacao: "Curtiu seu anúncio",
      icone:"heart-outline"
    },
  ]

  constructor() { }

  ngOnInit() {
  }

}
