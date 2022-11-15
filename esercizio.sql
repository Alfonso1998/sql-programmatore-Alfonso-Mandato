/* 1. Calcolare il codice dei programmatori che sono stati autori di almeno un programma scritto in Java dopo il 2000. */
SELECT programmatore.nome ,programmatore.codice, programma.linguaggio, programma.anno
FROM programmatore join autore on programmatore.codice=autore.codice join programma on autore.id=programma.id
WHERE programma.linguaggio='Java' and programma.anno>2000


/* 2. Calcolare il nome e la categoria dei programmatori che sono stati autori di almeno un programma scritto in un linguaggio diverso da Python, ordinando il risultato rispetto al nome dei programmatori. */
SELECT programmatore.nome, programmatore.categoria
FROM programmatore join autore on programmatore.codice=autore.codice join programma on autore.id=programma.id
WHERE programma.linguaggio is not 'Python'
order by programmatore.nome


/* 3. Per ogni programmatore di categoria 10, calcolare il suo codice e l'anno in cui ha scritto il primo programma in un linguaggio diverso da Java. */
SELECT programmatore.codice, programma.anno
FROM programmatore join autore on programmatore.codice=autore.codice join programma on autore.id=programma.id
WHERE programmatore.categoria=10 and programma.linguaggio is not 'Java'

/* 4. Calcolare le coppie dei codici di programmatori che sono stati coautori di almeno un programma scritto in Python. */

/* 5. Calcolare il codice ed il nome dei programmatori che hanno scritto solo programmi Java. */

/* 6. Per ogni programmatore e per ogni anno calcolare il numero di programmi scritti da quel programmatore in quell’anno, mostrando codice del programmatore, anno e numero di programmi scritti. */

/* 7. Per ogni linguaggio calcolare quanti sono in media gli autori dei programmi scritti in quel linguaggio.