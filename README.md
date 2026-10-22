# Delivery

Interface de cardápio e carrinho de compras.

## Stack e organização
Flutter/Dart, GetX. O estado do carrinho está em `lib/controllers/carrinho_controller.dart`. O projeto demonstra o fluxo de compra; não integra pagamento real.

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
