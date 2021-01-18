//
//  main.m
//  topic100
//
//  Created by zack on 2021/1/18.
//

/*
 题目：有五个学生，每个学生有3门课的成绩，从键盘输入以上数据（包括学生号，姓名，三门课成绩），计算出平均成绩，况原有的数据和计算出的平均分数存放在磁盘文件"stud"中。
 */

#include<stdio.h>
#include<stdlib.h>

typedef struct
{
    int number;
    char name[20];
    float Chinese,Math,English;
    float avg;
}Student;

int main()
{
    Student stu[5],*ptr=NULL;
    ptr=stu;
    FILE *file=NULL;
    file = (FILE *)fopen("/Users/zack/Desktop/C_Learning/topic100/test.txt","w");
    printf("请输入五个学生的信息：顺序为学号，姓名，语，数，外\n例子：1 张三 80 92 78\n");
    for(int i=0;i<5;i++)
    {
        scanf("%d %20s %f %f %f",&((ptr+i)->number),(ptr+i)->name,&((ptr+i)->Chinese),&((ptr+i)->Math),&((ptr+i)->English));
        (ptr+i)->avg = ((ptr+i)->Chinese + (ptr+i)->Math + (ptr+i)->English)/3;
    }

    //向test.txt文件中写入数据
    int result = fprintf(file,"学号\t%-20s\t语文\t数学\t英语\t平均成绩\n","姓名");
    if(result<0)
    {
        printf("写入文件stud失败！\n");
        return -1;
    }

    for(int i=0;i<5;i++)
    {
        //向test.txt文件中写入数据
        result = fprintf(file,"%-3d\t%-20s\t%3.1f\t%3.1f\t%3.1f\t%3.1f\n",(ptr+i)->number,(ptr+i)->name,(ptr+i)->Chinese,(ptr+i)->Math,(ptr+i)->English,(ptr+i)->avg);
        if(result<0)
        {
            printf("写入文件stud失败！\n");
            return -1;
        }
    }

    printf("写入文件stud成功！\n");
    fclose(file);
    return 0;
}
