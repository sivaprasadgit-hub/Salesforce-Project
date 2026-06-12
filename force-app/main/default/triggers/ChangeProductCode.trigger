trigger ChangeProductCode on Product2 (before insert) {
    List<Product2> pro = new List<Product2>();
    for(Product2 pro : Trigger.New){
        if(pro.productCode != null && pro.productCode !=''){
        pro.productCode = 'XYZ-'+pro.productCode;
        }
    }

}