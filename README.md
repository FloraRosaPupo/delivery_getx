# Delivery — Catálogo e Carrinho

## Descrição

Protótipo Flutter de delivery com catálogo, carrinho e tela de checkout. Utiliza GetX para estado e navegação; o checkout é demonstrativo e não realiza cobranças reais.

## Stack e bibliotecas

Flutter/Dart e GetX.

Dependências e versões declaradas: [pubspec.yaml](pubspec.yaml).

## Funcionalidades

- Catálogo.
- Carrinho.
- Formulário de checkout demonstrativo.

## Licença

Não há uma licença de distribuição definida para este repositório. Nenhuma licença MIT, Apache ou equivalente é concedida por este README. As atribuições e os direitos dos materiais de terceiros permanecem preservados.

## Validação e limites

Inclusão/remoção e totalização do carrinho. Checkout é protótipo, sem cobrança real.

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

## Organização e manutenção

Catálogo, carrinho e checkout estão agrupados por funcionalidade. Regras de quantidade/total seguem no controller do carrinho. GetX foi mantido como mecanismo existente; não há ganho em uma migração de estado junto com uma reorganização sem necessidade funcional.

Veja [a revisão de desenvolvimento](docs/REVISAO.md) para decisões, testes e limites, e [o guia de contribuição](CONTRIBUTING.md) para o fluxo de manutenção.
