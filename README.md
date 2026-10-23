# Delivery

Interface de cardápio e carrinho de compras.

## Stack e organização
Flutter/Dart e GetX.

Catálogo, carrinho e checkout estão agrupados por funcionalidade. Regras de quantidade/total seguem no controller do carrinho. GetX foi mantido como mecanismo existente; não há ganho em uma migração de estado junto com uma reorganização sem necessidade funcional.

## Executar
Use a versão de Flutter registrada em `.github/workflows/ci.yml`.
```sh
git clone https://github.com/FloraRosaPupo/delivery_getx.git
cd delivery_getx
flutter pub get
flutter run
```

## Verificações
```sh
flutter analyze --no-fatal-infos --no-fatal-warnings
flutter test
```
A CI verifica erros de análise e os testes. Avisos e sugestões continuam visíveis no relatório do analisador. Testes locais não substituem a validação no dispositivo e dos serviços externos.

## Contribuir
Abra uma branch por alteração, descreva o comportamento esperado e inclua testes para regras ou regressões. Mantenha credenciais e arquivos gerados fora do Git.

## Licença
Não há licença de distribuição definida neste repositório.


## Funcionalidades

- Catálogo.
- carrinho.
- formulário de checkout demonstrativo.


## Organização e manutenção

Catálogo, carrinho e checkout estão agrupados por funcionalidade. Regras de quantidade/total seguem no controller do carrinho. GetX foi mantido como mecanismo existente; não há ganho em uma migração de estado junto com uma reorganização sem necessidade funcional.

Veja [a revisão de desenvolvimento](docs/REVISAO.md) para decisões, testes e limites, e [o guia de contribuição](CONTRIBUTING.md) para o fluxo de manutenção.
