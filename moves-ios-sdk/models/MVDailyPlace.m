//
//  MVDailyPlace.m
//  Move-iOS-SDK
//
//  Created by Vito on 13-7-14.
//  Copyright (c) 2013年 vito. All rights reserved.
//

#import "MVDailyPlace.h"
#import "DFDateFormatterFactory.h"

@implementation MVDailyPlace

- (MVDailyPlace *)initWithDictionary:(NSDictionary *)dic {
    self = [super init];
    if (self && [dic isKindOfClass:[NSDictionary class]]) {
        if (dic[@"date"] && !isNull(dic[@"date"])) {
            NSDateFormatter *formatter = [[DFDateFormatterFactory sharedFactory] dateFormatterWithFormat:@"yyyyMMdd"];
            formatter.calendar = [MVCalendarFactory calendarWithIdentifier:NSGregorianCalendar];;
            _date = [formatter dateFromString:dic[@"date"]];
        }
        
        if ([dic[@"segments"] isKindOfClass:[NSArray class]]) {
            NSMutableArray *segments = [[NSMutableArray alloc] init];
            for (NSDictionary *segment in dic[@"segments"]) {
                [segments addObject:[[MVSegment alloc] initWithDictionary:segment]];
            }
            if (segments.count > 0) {
                _segments = segments;
            }
        }
        
        if (dic[@"lastUpdate"] && !isNull(dic[@"lastUpdate"])) {
            NSDateFormatter *formatter = [[DFDateFormatterFactory sharedFactory] dateFormatterWithFormat:@"yyyyMMdd'T'HHmmssZ"];
            formatter.calendar = [MVCalendarFactory calendarWithIdentifier:NSGregorianCalendar];
            _lastUpdate = [formatter dateFromString:dic[@"lastUpdate"]];
        }
    }
    
    return self;
}

@end
