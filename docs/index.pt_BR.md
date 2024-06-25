<div class="preview-container">
  <img class="off-glb" src="_inc/images/knulli-booting-up.png"/>
</div>

# Bem-vindo à Wiki do KNULLI :material-gamepad:

KNULLI é um firmware personalizado para dispositivos de jogos retrô (portáteis, bartops, etc.). Ele é desenvolvido como um fork do [Batocera](https://batocera.org).E tenta fornecer suporte para dispositivos que se enquadram em pelo menos uma dessas categorias:

* Não há código aberto do kernel e/ou u-boot disponíveis
* Existem fontes, mas o kernel não é principal e/ou é muito antigo (por exemplo, dispositivos com kernel BSP 3.4 como o Egret II Mini)
* Não há suporte a GPU ou a GPU não é suportada, então o framebuffer é a única opção
* É um dispositivo que eu possuo e decidi criar um firmware para ele

## Recursos

O KNULLI suporta dispositivos com GPU (suporte a GLES) e apenas framebuffer (legado).

* Emulation Station como frontend para dispositivos baseados em GPU
* Simplemenu/Simplermenu+ para dispositivos apenas com framebuffer (também para os baseados em GPU, se preferido)
* RetroArch mais vários núcleos libretro
* Suporte a Wireless e Bluetooth (incluindo áudio) quando suportado pelo dispositivo
* Suporte a wireless USB externo para aqueles sem placa wireless interna
* Retroachievements
* Netplay
* Suporte a scraping para obter arte da capa/miniatura dos jogos

## Comunidade

O KNULLI usa o Discord para discussões, se você quiser se juntar a nós, use este link: [:simple-discord: Discord](https://discord.gg/HXPS3DAeeB)

## Licenças

O KNULLI é uma distribuição Linux composta por muitos componentes de código aberto. Os componentes são fornecidos sob suas respectivas licenças. Esta distribuição inclui componentes licenciados apenas para uso não comercial.

### Trabalhos Incluídos
Todo outro software é fornecido sob a respectiva licença de cada componente. Essas licenças podem ser encontradas no código-fonte do software ou na pasta de licenças deste projeto. As modificações no software e scripts agrupados pela equipe do KNULLI são licenciadas nos termos do software sendo modificado.

### Kernels e bootloaders binários

Os lançamentos para alguns dispositivos incluem kernels e/ou bootloaders que não têm o código-fonte disponível porque o fabricante não os publicou. Nesses casos, a página específica do dispositivo inclui instruções para extraí-los do firmware original.

## Créditos

Este projeto não é o trabalho de uma única pessoa, mas sim de muitas pessoas em todo o mundo que desenvolveram os bits de código aberto sem os quais este projeto não poderia existir. Agradecimentos especiais ao Batocera, muOS, JelOS, CoreELEC, LibreELEC e aos desenvolvedores e colaboradores da comunidade de código aberto.
