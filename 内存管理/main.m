//
//  main.m
//  内存管理
//
//  Created by zack on 2021/1/18.
//


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[]) {
   
    char name[100];
    strcpy(name, "Zara Ali");
    printf("name: %s\n",name);
    
    
    char *description;
    /* 动态分配内存 */
    description = (char *)malloc( 200 * sizeof(char) );
    if( description == NULL )
    {
        fprintf(stderr, "Error - unable to allocate required memory\n");
    }
    else
    {
        strcpy( description, "Zara ali a DPS student in class 10th");
    }
    printf("Description: %s\n", description );
    
    return 0;
}
