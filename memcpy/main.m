//
//  main.m
//  memcpy
//
//  Created by zack on 2021/1/29.
//

// 将字符串复制到数组 dest 中
#include <stdio.h>
#include <string.h>
 
int main ()
{
   const char src[50] = "http://www.runoob.com";
   char dest[50];
 
   memcpy(dest, src, strlen(src)+1);
   printf("dest = %s\n", dest);
   
   return(0);
}
