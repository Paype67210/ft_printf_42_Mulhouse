<picture>
<img alt="Entête du dépôt ft_printf." src="https://github.com/Paype67210/ft_printf_42_Mulhouse/blob/main/Tools/cover-ft_printf.png">
</picture>

3<sup>ème</sup> projet développé dans le cursus de 42, ft_printf consiste a reproduire la fonction printf pour un certain nombre de parametres.
+ %%		: impression du %
+ %d ou i	: impression des `INT`
+ %s		: impression d'une chaine de caracteres (`CHAR *`)
+ %c		: impression d'un caractere unique (`CHAR`)
+ %x ou X	: impression d'un Hexadecimal en minuscule ou en majuscule
+ %li		: impression d'un `Unsigned INT`
+ %p		: impression de l'adresse d'un pointer

La nouveaute principale de ce projet est la decouverte des `variables variatiques`.
Ce type de variable permet a une fonction d'accepter un nombre de parametres variable
<int	main(char *str, ...)>
Les `...` representent la variable variatique dont on recupere les arguments avec les macros `va_start`, `va_arg` et `va_end`.

