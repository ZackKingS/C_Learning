//
//  main.m
//  struct
//
//  Created by zack on 2021/1/18.
//

#import <Foundation/Foundation.h>

struct Books
{
    char  title[50];
    char  author[50];
    char  subject[100];
    int   book_id;
};


int main(int argc, const char * argv[]) {
    
    struct Books book = {"C 语言", "RUNOOB", "编程语言", 123456};
    
    printf("title : %s\nauthor: %s\nsubject: %s\nbook_id: %d\n", book.title, book.author, book.subject, book.book_id);
    
    return 0;
}
