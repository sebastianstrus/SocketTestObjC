//
//  ViewController.m
//  SocketTestObjC
//
//  Created by Sebastian Strus on 2018-03-27.
//  Copyright © 2018 Sebastian Strus. All rights reserved.
//

#import "ViewController.h"
#import "SocketTestObjC-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    MySocket* test = [[MySocket alloc] init];
    
    
    [test sayHello];
    //prints:
//response: 593
//    {"data":{"additional_data_version_p48":8,"backlight_intensity":100,"cless_ready":"0x0a00","currency_code":"752","flash_free_size":"106487808","flash_total_size":"111935488","merchant_id":"20000088","mockup":true,"model":"IPP350-11T1718A","offline_count":0,"offline_total_amount":0,"os_sdk_version":"9.30.1","pci_version":"3","serial":"13193PP80177837","software_changeset":"96a1ac54","software_date":"2018-01-05 14:10:14 +0100 - built: 2018-01-09","software_version_name":"1.0.2191 (2.19a)","terminal_datetime":"2018-03-27 10:42:52","terminal_id":"1"},"message_type":"properties","version":1}
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
