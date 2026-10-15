# prva_aplikacija

A new Flutter project.
# Vježba 1 – Postavljanje okruženja, Git i prva Flutter aplikacija

**Student:** Anđela Marinović
**Kolegij:** Napredni razvoj aplikacija za mobilne uređaje

## Okruženje

- **Operacijski sustav:** Windows
- **Flutter verzija:** 3.47.7
- **Dart verzija:** 3.13.5
- **Korišteni uređaj:** Chrome (web) – `flutter run -d chrome`

### Napomena o Android provjeri

Android provjera još nije dovršena. Aplikacija je privremeno pokrenuta u pregledniku Chrome (web fallback).
Android SDK i emulator su instalirani, ali `flutter doctor` za Android toolchain prijavljuje:

```
X cmdline-tools component is missing.
X Android license status unknown.
  Run `flutter doctor --android-licenses` to accept the SDK licenses.
```

Za dovršetak je potrebno u Android Studiu (SDK Manager → SDK Tools) instalirati
Android SDK Command-line Tools i zatim pokrenuti `flutter doctor --android-licenses`.

## Provedene izmjene

### Dart program (`bin/provjera.dart`)
- Ime promijenjeno u svoje
- Dodana četvrta tema `GitHub` u listu `teme`
- Varijabli `napomena` pridružen tekst `Prvi samostalni rad`, pa treći redak ispisa umjesto „Bez napomene” prikazuje taj tekst
- Mia dodana u mapu `bodovi` sa 70 bodova, pa posljednji redak prvog dijela ispisa prikazuje 70 umjesto 0
- Dodan završeni zadatak `Prvi commit`; broj otvorenih zadataka ostaje 2 jer je novi zadatak završen
- Dodana funkcija `naslovi` koja pomoću `where` i `map` vraća naslove otvorenih zadataka (`[Git, Dart]`)
- `prikazNapomene` pozvana s tekstom i s vrijednošću `null`

### Flutter zaslon (`lib/main.dart`)
- Promijenjen naslov aplikacijskog zaslona u „Andjelina aplikacija”
- Upisano vlastito ime
- Dodan treći `Text` widget s rečenicom o tome što želim naučiti
- Isprobani hot reload (`r`) i hot restart (`R`): hot reload primjenjuje izmjene uz zadržavanje stanja, a hot restart ponovno pokreće aplikaciju i resetira stanje

## Odgovori na pitanja

### Provjera razumijevanja 1
**Zašto skup `oznake` sadrži dva elementa?**
`Set` čuva samo jedinstvene vrijednosti. Vrijednost `'novo'` navedena je dvaput, ali se u skup sprema samo jednom, pa skup sadrži `'novo'` i `'vjezba'`, tj. dva elementa.

**Zašto dohvat za Miju u početnom primjeru daje zamjensku nulu?**
Mia u početnom primjeru ne postoji u mapi `bodovi`, pa `bodovi['Mia']` vraća `null`. Operator `??` tada vraća desnu stranu, odnosno zamjensku vrijednost `0`.

### Funkcija `prikazNapomene`
Kada dobije tekst `Prvi samostalni rad`, vraća taj tekst. Kada dobije `null`, vraća `Bez napomene`.
Parametar ima tip `String?` umjesto `String` jer funkcija mora moći primiti i vrijednost `null`. Tip `String` ne dopušta `null`, pa poziv s `null` ne bi prošao provjeru tipova.

### Provjera razumijevanja 2
**Zašto je `naslov` označen s `required`, a `zavrsen` ima zadanu vrijednost?**
Svaki zadatak mora imati naslov, a za njega ne postoji smislena zadana vrijednost, pa ga se mora navesti pri stvaranju objekta. Za `zavrsen` postoji logična zadana vrijednost: novi zadatak je u pravilu nedovršen, pa je zadano `false` i ne treba ga navoditi svaki put.

**Što bi se dogodilo da zadatak stvorimo bez naslova?**
Dart bi javio pogrešku pri prevođenju (compile-time error) jer nedostaje obavezni imenovani argument `naslov`. Program se ne bi mogao pokrenuti.