//
//  VCEstadoCuenta.h
//  SAPAO_1
//
//  Created by Benjas on 30/03/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCEstadoCuenta : UIViewController

//elementos del Estado de cuenta
@property (strong, nonatomic) IBOutlet UILabel *lblCuenta;
@property (strong, nonatomic) IBOutlet UILabel *lblNombre;
@property (strong, nonatomic) IBOutlet UILabel *lblDomicilio;
@property (strong, nonatomic) IBOutlet UILabel *lblTarifa;
@property (strong, nonatomic) IBOutlet UILabel *lblPeriodo;
@property (strong, nonatomic) IBOutlet UILabel *lblAdeudo;
@property (strong, nonatomic) IBOutlet UILabel *lblRecargos;
@property (strong, nonatomic) IBOutlet UILabel *lblRezagos;
@property (strong, nonatomic) IBOutlet UILabel *lblOtros;
@property (strong, nonatomic) IBOutlet UILabel *lblSubtotal;
@property (strong, nonatomic) IBOutlet UILabel *lblCorreccion;
@property (strong, nonatomic) IBOutlet UILabel *lblSaldo;
@property (strong, nonatomic) IBOutlet UILabel *lblTotal;

///

@property (strong, nonatomic) NSString *laCuenta;



@end
