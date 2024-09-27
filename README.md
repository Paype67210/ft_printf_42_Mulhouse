<picture>
<img alt="Entête du dépôt ft_printf." src="https://github.com/Paype67210/ft_printf_42_Mulhouse/blob/main/Tools/cover-ft_printf.png">
</picture>

### Objectifs du projet

- **Recréation de la fonction printf** : L'objectif est d'implémenter une version simplifiée de `printf` qui supporte plusieurs conversions spécifiques.
- **Gestion des arguments variadiques** : Le projet introduit la gestion des arguments en nombre variable via la bibliothèque `stdarg.h`.
- **Support des formats classiques** : Les conversions que la fonction doit gérer incluent :
  - `%c` : Afficher un caractère.
  - `%s` : Afficher une chaîne de caractères.
  - `%p` : Afficher un pointeur en format hexadécimal.
  - `%d` et `%i` : Afficher un nombre entier en base 10.
  - `%u` : Afficher un entier non signé en base 10.
  - `%x` et `%X` : Afficher un nombre en base 16 (hexadécimal), en minuscules ou majuscules.
  - `%%` : Afficher un symbole de pourcentage.

### Compétences acquises

- **Manipulation des arguments variadiques** : Compréhension et utilisation de `va_list`, `va_start()`, `va_arg()` et `va_end()` pour manipuler une liste d'arguments d'une fonction à nombre d'arguments variables.
- **Affichage formaté** : Mise en place d'un système robuste pour afficher des chaînes et des nombres de manière formatée.
- **Conversion des types** : Implémentation de la conversion de différents types (caractères, chaînes, nombres) en chaînes de caractères affichables.
- **Gestion des cas limites** : Le projet demande une gestion précise des erreurs, notamment avec des valeurs nulles, des pointeurs invalides et des comportements inattendus.

### Détails techniques

- **stdarg.h** : Utilisation de cette bibliothèque standard pour gérer les fonctions à nombre d'arguments variables.
- **Bufférisation des sorties** : Gestion efficace de l'affichage en travaillant directement avec les fonctions d'écriture système (`write()`).
- **Gestion de la mémoire** : Une attention particulière est portée à la gestion de la mémoire et à l'optimisation des opérations de conversion et d'affichage.

### Formats supplémentaires (non implémentés)

Le projet **ft_printf** peut également inclure des formats supplémentaires pour la gestion fine de l'affichage, tels que les flags :
- `-` : Alignement à gauche dans le champ spécifié.
- `0` : Remplissage avec des zéros pour les champs numériques.
- `.` : Précision pour les nombres flottants et les chaînes de caractères.
- `#` : Utilisation de préfixes pour les bases octale et hexadécimale.
- `+` : Affichage explicite du signe pour les nombres positifs.
- ` ` (espace) : Insère un espace pour les nombres positifs lorsqu'aucun signe n'est utilisé.

Ces flags permettent une personnalisation plus avancée de l'affichage, mais n'ont pas été implémentés dans cette version.

### Améliorations futures : Redirection de sortie

Une piste d'amélioration intéressante pour le projet **ft_printf** serait d'ajouter la possibilité de rediriger la sortie vers des flux autres que `stdout`. À l'instar des fonctions `fprintf` et `dprintf`, il est possible de modifier le comportement pour écrire directement sur :
- **STDOUT** : Sortie standard (par défaut).
- **STDERR** : Sortie d'erreur pour afficher des messages d'avertissement ou d'erreur.
- **Descripteurs de fichier** : Permettre d'écrire vers des fichiers ouverts ou des flux spécifiques.

Cela permettrait de rendre la fonction plus polyvalente et utile dans des contextes nécessitant un contrôle précis de la destination des messages de sortie.

### Conclusion

Le projet **ft_printf** est un excellent exercice pour se familiariser avec la gestion des fonctions à arguments variadiques et l'affichage formaté en C. Il s'agit d'une fonction omniprésente dans les programmes informatiques et maîtriser son implémentation permet de mieux comprendre le fonctionnement interne des bibliothèques standards en C.

### Ressources supplémentaires

- [Documentation sur stdarg.h](https://en.cppreference.com/w/c/variadic)
- [Guide sur l'écriture de fonctions variadiques en C](https://www.geeksforgeeks.org/variadic-functions-in-c/)
