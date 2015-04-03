//
//  VCEstadoCuenta.m
//  SAPAO_1
//
//  Created by Benjas on 30/03/15.
//  Copyright (c) 2015 Benjas. All rights reserved.
//

#import "VCEstadoCuenta.h"
#import "EdoCuenta.h"
#import "TFHpple.h"



@interface VCEstadoCuenta ()
@property NSMutableArray *objects;
@end

@implementation VCEstadoCuenta
@synthesize laCuenta;

-(void)LoadData {
    // 1
    NSURL *edoCuentaURL = [NSURL URLWithString:@"http://187.157.41.228/consulta_adeudo_app.aspx?cuenta=6587"];
    NSData *edoCuentasHtmlData = [NSData dataWithContentsOfURL:edoCuentaURL];
    
    //2
    
    TFHpple *edoCuentaParser = [TFHpple hppleWithHTMLData:edoCuentasHtmlData];
    
    //3
    //NSString *tutorialsXpathQueryString = @"//div[@class='content-wrapper']/ul/li/a";
    NSString *edoCuentaXpathQueryString = @"//body/table/tr/td";
    //    NSString *tutorialsXpathQueryString = @"//td[@id='nombre']";
    NSArray *edoCuentaNodes = [edoCuentaParser searchWithXPathQuery:edoCuentaXpathQueryString];
    

    
    //4
    NSMutableArray *newEdoCuenta = [[NSMutableArray alloc] initWithCapacity:0];
    
    /*EdoCuenta *edocuenta = [[EdoCuenta alloc] init];
    [newEdoCuenta addObject:edocuenta];
    
    edocuenta.ec_nombre = newEdoCuenta[0];
    edocuenta.ec_domicilio = newEdoCuenta[1];
    
    self.lblNombre.text=edocuenta.ec_nombre;
    self.lblDomicilio.text=edocuenta.ec_domicilio;
    
    
       self.lblNombre.text = edocuenta.ec_nombre = edoCuentaNodes[1];
       self.lblDomicilio.text = edocuenta.ec_domicilio = edoCuentaNodes[2];
       self.lblTarifa.text = edocuenta.ec_tarifa = edoCuentaNodes[3];
       self.lblPeriodo.text = edocuenta.ec_periodo = edoCuentaNodes[4];
       self.lblAdeudo.text = edocuenta.ec_adeudo = edoCuentaNodes[0];
    */
    ////
    
   
    for (TFHppleElement *dataEstado in edoCuentaNodes) {
        
        //5
        
        EdoCuenta *edocuenta = [[EdoCuenta alloc] init];
        [newEdoCuenta addObject:edocuenta];
        
        //6
        edocuenta.elDato = [[dataEstado firstChild]content];
        
        //self.lblNombre.text = [edoCuentaNodes objectAtIndex:0];
        
        
        
        //7
        //tutorial.url = [element objectForKey:@"href"];
        
        _objects = newEdoCuenta;
          // NSString *object = [ _objects objectAtIndex:0];
        
        //[self.tableView reloadData];
    }
    
    //NSString *object = [ _objects objectAtIndex:0];
    //self.lblNombre.text = [ _objects objectAtIndex:];
    //self.lblDomicilio.text = [ _objects objectAtIndex:1];
    
    ///////
    
    

}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self LoadData];
    
    EdoCuenta *elnombre = [ _objects objectAtIndex:0];
    EdoCuenta *eldomicilio = [ _objects objectAtIndex:1];
    EdoCuenta *latarifa = [ _objects objectAtIndex:2];
    EdoCuenta *elperiodo = [ _objects objectAtIndex:3];
    EdoCuenta *eladeudo = [ _objects objectAtIndex:4];
    EdoCuenta *elrecargo = [ _objects objectAtIndex:5];
    EdoCuenta *elrezago = [ _objects objectAtIndex:6];
    EdoCuenta *losotros = [ _objects objectAtIndex:7];
    EdoCuenta *elsubtotal = [ _objects objectAtIndex:8];
    EdoCuenta *elsaldox = [ _objects objectAtIndex:9];
    EdoCuenta *eltotalx = [ _objects objectAtIndex:10];
    EdoCuenta *lascorreciones = [ _objects objectAtIndex:11];
    EdoCuenta *elsaldo = [ _objects objectAtIndex:12];
    EdoCuenta *eltotal = [ _objects objectAtIndex:13];
    
    self.lblNombre.text = elnombre.elDato;
    self.lblDomicilio.text = eldomicilio.elDato;
    self.lblTarifa.text = latarifa.elDato;
    self.lblPeriodo.text = elperiodo.elDato;
    self.lblAdeudo.text = eladeudo.elDato;
    self.lblRecargos.text = elrecargo.elDato;
        self.lblRezagos.text = elrezago.elDato;
        self.lblOtros.text = losotros.elDato;
        self.lblSubtotal.text = elsubtotal.elDato;
        self.lblCorreccion.text = lascorreciones.elDato;
        self.lblSaldo.text = elsaldo.elDato;
        self.lblTotal.text = eltotal.elDato;
       // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



@end
