//
//  ViewController.m
//  Example
//
//  Created by Jerry on 2018/6/27.
//  Copyright © 2018年 Jerry. All rights reserved.
//

#import "ViewController.h"
#import <openssl/md5.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
     test ( @"12345" );
}
void test( NSString * string){
    
    // 输入参数 1 ：要生成 md5 值的字符串， NSString-->uchar*
    
    unsigned char *inStrg = ( unsigned char *)[[string dataUsingEncoding :NSASCIIStringEncoding ] bytes];
    
    // 输入参数 2 ：字符串长度
    
    unsigned long lngth = [string length ];
    
    // 输出参数 3 ：要返回的 md5 值， MD5_DIGEST_LENGTH 为 16bytes ， 128 bits
    
    unsigned char result[ MD5_DIGEST_LENGTH ];
    
    // 临时 NSString 变量，用于把 uchar* 组装成可以显示的字符串： 2 个字符一 byte 的 16 进制数
    
    NSMutableString *outStrg = [ NSMutableString string ];
    
    // 调用 OpenSSL 函数
    
    MD5 (inStrg, lngth, result);
    
    unsigned int i;
    
    for (i = 0 ; i < MD5_DIGEST_LENGTH ; i++)
        
    {
        
        [outStrg appendFormat : @"%02x" , result[i]];
        
    }
    
    NSLog ( @"input string:%@" ,string);
    
    NSLog ( @"md5:%@" ,outStrg);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
