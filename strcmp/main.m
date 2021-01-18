//
//  main.m
//  strcmp
//
//  Created by zack on 2021/1/18.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
      
        const char* szParam = "zack";
        if (strcmp(szParam, "zack") == 0 ) {
            printf("yes\n");
        }else{
            printf("no\n");
        }
        
    }
    return 0;
}
