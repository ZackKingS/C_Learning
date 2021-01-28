//
//  main.m
//  topic2
//
//  Created by zack on 2021/1/18.
//
 
/*
 题目：企业发放的奖金根据利润提成。
 利润(I)低于或等于10万元时，奖金可提10%；
 利润高于10万元，低于20万元时，低于10万元的部分按10%提成，高于10万元的部分，可提成7.5%；
 20万到40万之间时，高于20万元的部分，可提成5%；
 40万到60万之间时高于40万元的部分，可提成3%；
 60万到100万之间时，高于60万元的部分，可提成1.5%；
 高于100万元时，超过100万元的部分按1%提成。
 从键盘输入当月利润I，求应发放奖金总数？
 */



#include <stdio.h>
#include <stdlib.h>
#include <string.h>

struct Person
{
    char name[64];
    int age;
};

struct Person2
{
    char *name;
    int age;
};

void test01()
{
    struct Person p1 = {"tom" , 18};
    struct Person p2 = {"jerry" , 20};
    
//    p1 = p2;
    
    printf("p1姓名：%s  , 年龄：%d \n",p1.name,p1.age);
    printf("p2姓名：%s  , 年龄：%d \n",p2.name,p2.age);
}

void test02()
{
    struct Person2 p1 ;
    p1.name = malloc(sizeof(char)*64);
    strcpy(p1.name , "tom");
    p1.age = 222;
    
    struct Person2 p2 ;
    p2.name = malloc(sizeof(char)*64);
    strcpy(p2.name , "jerry");
    p2.age = 666;
    
//    p1 = p2;
    
    printf("p1姓名：%s  , 年龄：%d \n",p1.name,p1.age);
    printf("p2姓名：%s  , 年龄：%d \n",p2.name,p2.age);
    
    if (p1.name != NULL) {
        free(p1.name);
        p1.name = NULL;
    }
    
    if (p2.name != NULL) {
        free(p2.name);
        p2.name = NULL;
    }
}

int main(int argc, const char * argv[]) {
   
    
//    test01();
    test02();
    
    return 0;
}
