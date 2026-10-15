// ignore_for_file: avoid_print, equal_elements_in_set, dead_code, dead_null_aware_expression
void main() {
  final ime = 'Andela';
  int brojVjezbe = 1;
  String? napomena;
  napomena = 'Prvi samostalni rad';
  final teme = <String>['Dart', 'Flutter', 'Git', 'GitHub'];
  final oznake = <String>{'novo', 'novo', 'vjezba'};
  final bodovi = <String, int>{'Ana': 80, 'Ivan': 55, 'Mia': 70};
  print('Student: $ime');
  print('Vjezba: $brojVjezbe');
  print(napomena ?? 'Bez napomene');
  print(teme[0]);
  print(oznake.length);
  print(bodovi['Mia'] ?? 0);

  final zadaci = <Zadatak>[
    const Zadatak(naslov: 'Instalacija', zavrsen: true),
    const Zadatak(naslov: 'Git'),
    const Zadatak(naslov: 'Dart'),
    const Zadatak(naslov: 'Prvi commit', zavrsen: true),
  ];

  for (final z in zadaci) {
    print('${z.naslov}: ${z.oznaka()}');
  }
  print('Otvorenih: ${brojOtvorenih(zadaci)}');
  print(naslovi(zadaci));
  print(prikazNapomene(napomena));
  print(prikazNapomene(null));
}

class Zadatak {
  final String naslov;
  final bool zavrsen;

  const Zadatak({required this.naslov, this.zavrsen = false});

  String oznaka() => zavrsen ? 'Gotovo' : 'U tijeku';
}

int brojOtvorenih(List<Zadatak> zadaci) =>
    zadaci.where((z) => !z.zavrsen).length;

String prikazNapomene(String? napomena) => napomena ?? 'Bez napomene';

List<String> naslovi(List<Zadatak> zadaci) =>
    zadaci.where((z) => !z.zavrsen).map((z) => z.naslov).toList();
