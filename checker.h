#ifndef _CHECKER_H
#define _CHECKER_H

extern struct HashTable *dictionary;

extern unsigned int stringHash(void *string);

extern int stringEquals(void *s1, void *s2);

extern void readDictionary(char *dictname);

extern void processInput();

#endif
