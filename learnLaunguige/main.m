//
//  main.m
//  learnLaunguige
//
//  Created by coretate on 2/25/16.
//  Copyright © 2016 coretate. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
/**
 *********************************runtime 练习****************************************
 
        NSLog(@"Hello, World!");
        
        static char overviewKey;
        NSArray *array =[[NSArray alloc] initWithObjects:@"One", @"Two", @"Three", nil];
        //为了演示的目的，这里使用initWithFormat:来确保字符串可以被销毁
        NSString * overview = [[NSString alloc] initWithFormat:@"%@",@"First three numbers"];
        objc_setAssociatedObject(array, &overviewKey, overview, OBJC_ASSOCIATION_RETAIN);
        [overview release];
        
        NSString *associatedObject = (NSString *)objc_getAssociatedObject(array, &overviewKey);
        NSLog(@"associatedObject:%@", associatedObject);
        
        objc_setAssociatedObject(array, &overviewKey, nil, OBJC_ASSOCIATION_ASSIGN);
        [array release];
        
        NSArray *resultArray = [array sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
            NSString *item1 = obj1;
            NSString *item2 = obj2;
            return  [item1 compare:item2 options:NSLiteralSearch];
        }];
***************************************************************************************/
   
        
        
        
        
/**
 *********************************练习将16进制字符串转为整型的16进制的整数****************************************

        NSString *a = @"4b3c";
//        [a uppercaseString];     //本身用自带功能把小写字母转大写，后面用的与运算解决的因为小写字母和大写字母相差32也就是2的5次方。
        const char *b = [a cStringUsingEncoding:NSUTF8StringEncoding];
        unsigned long int len = strlen(b);
        int result=0;
        for (int i=0; i<len; i++) {
            if (b[i]>=48&&b[i]<=57) {
                int c=b[i]-48;
                result += c<<(3-i)*4;
                NSLog(@"result = 0x%x",result);
                continue;
            }
            
            NSLog(@"b[%d]=%d",i,b[i]);
            int x = ~(1<<5);  //将1左移5位得到32，然后求反。
            int upper = b[i]& x;//做与运算将二进制的第一五位置零。
            if (upper>=65&&upper<=90) {
                int c=upper-55;
                result += c<<(3-i)*4;
                NSLog(@"result = 0x%x",result);
            }

        }
        NSLog(@"result = 0x%x",result);
 ***************************************************************************************/

    }
    
    return 0;
}






