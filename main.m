//
//  main.m
//  NSArray
//
//  Created by Роман on 14.04.18.
//  Copyright © 2018 Роман. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /* Create NSArray, containing several strings, using literal declaration*/
        NSArray* array1 =@[@"string1",@"sting2",@"string3"];
        /* Create mutable array from piviously created NSArray*/
        NSMutableArray* array2 =[@[@"string1",@"string2",@"string3"] mutableCopy] ;
        /*Create an empty array and obtain its first and last element in a safe way*/
        /*
        NSArray* emptyArray = [[NSArray alloc] init];
        
        NSLog(@"%@" , [emptyArray objectAtIndex:0]);
        
         */
        
        /*Create NSArray, containing strings from 1 to 20*/
        
        NSArray* array3 =[[NSArray alloc]initWithObjects:@"string1",@"string2",@"string3",@"string4",@"string5",@"string6",@"string7",@"string8",@"string9",
                          @"string10",@"string11",@"string12",@"string13",@"string14",@"string15",@"string16",@"string17",@"string18",@"string19",@"string20", nil];
        /* Get its shallow copy and real deep copy */
        NSArray* shallowCopy = [array3 copyWithZone:nil];
        NSArray* deepCopy = [NSKeyedUnarchiver unarchiveObjectWithData:[NSKeyedArchiver archivedDataWithRootObject:array3]];
        /* Iterate over array and obtain item at index 13. Print an item*/
        for (int i = 0; i< [array3 count]; ++i)
        {
            NSLog(@"%d",i);
        }
        NSLog(@"Object in array - %@", [array3 objectAtIndex:13]);
        
        /* Make array mutable. Add two new entries to the end of the array, add an entry to the beginning of the array. Iterate over an array and remove item at index 5.*/
        NSMutableArray* mutablrArray3 = [array3 mutableCopy];
        [mutablrArray3 addObject:@"string21"];
        [mutablrArray3 addObject:@"string22"];
        [mutablrArray3 insertObject:@"string0" atIndex:0];
        NSLog(@"%@", mutablrArray3);
        [mutablrArray3 removeObjectAtIndex:5];
        NSLog(@"%@", mutablrArray3);
        
        
        NSArray* arrayWithNumber = @[@"24",@"34",@"12",@"1,5",@"412",@"1",@"10,1"];
        NSArray* sortedArrayWithNumber =[arrayWithNumber sortedArrayUsingSelector:@selector(compare:)];
        NSLog(@"%@",sortedArrayWithNumber);
        
        
    }
    
    return 0;
}
