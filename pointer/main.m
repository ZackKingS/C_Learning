//
//  main.m
//  pointer
//
//  Created by zack on 2021/1/18.
//

#import <Foundation/Foundation.h>

void change(int *p)
{
    //访问num储存空间， 修改num的值
    *p = 66;
}


int main(int argc, const char * argv[]) {
   
    int num ;
    num = 10;
     
    int *p;
    p = &num; //把num的地址存到p中
     
    change(p);
    
    printf("num = %d\n",num);
    
    return 0;
}
