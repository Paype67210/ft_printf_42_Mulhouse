<picture>
<img alt="Entête du dépôt ft_printf." src="https://github.com/Paype67210/ft_printf_42_Mulhouse/blob/main/Tools/cover-ft_printf.png">
</picture>

3<sup>ème</sup> projet développé dans le cursus de 42, ft_printf consiste à reproduire la fonction printf pour un certain nombre de paramètres.
+ %%		: impression du %
+ %d ou i	: impression des `INT`
+ %s		: impression d'une chaîne de caractères (`CHAR *`)
+ %c		: impression d'un caractère unique (`CHAR`)
+ %x ou X	: impression d'un Héxadecimal en minuscule où en majuscule
+ %li		: impression d'un `Unsigned INT`
+ %p		: impression de l'adresse d'un pointer

La nouveauté principale de ce projet est la découverte des `variables variatiques`.
Ce type de variable permet à une fonction d'accepter un nombre de paramètres variable

```
int	main(char *str, ...)
```

Les `...` représentent la variable variatique dont on recupère les arguments avec les macros `va_start`, `va_arg` et `va_end`.

