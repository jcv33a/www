CREATE TABLE comercios (                                                              
co_id varchar(10) NOT NULL default '',                                                
co_nombre varchar(30) NOT NULL default '',                                            
co_pais varchar(30) NOT NULL default '',                                              
UNIQUE KEY co_id (co_id)                                                              
) TYPE=MyISAM;                                                                        
                                                                                         
                                                                                           
INSERT INTO comercios VALUES ('ESGR000002', 'PRUEBA 2', 'ESPAÑA');                    
INSERT INTO comercios VALUES ('ESGR000001', 'PRUEBA 1', 'ESPAÑA');                    
INSERT INTO comercios VALUES ('516', 'JUAN PEREZ', 'MEXICO');                         
INSERT INTO comercios VALUES ('984', 'ANTONIO RODRIGUEZ', 'MEXICO');                  
INSERT INTO comercios VALUES ('996', 'INDALECIO TRAVIANNI', 'ARGENTINA');             
INSERT INTO comercios VALUES ('975', 'ABELARDO SAINZ', 'PERU');                       
INSERT INTO comercios VALUES ('111', 'JOSE TOLTACA', 'PERU');                         
INSERT INTO comercios VALUES ('332', 'RAIMUNDO ALONSO', 'ARGENTINA');                 
INSERT INTO comercios VALUES ('123', 'JUN JUANES', 'BRASIL');                         
INSERT INTO comercios VALUES ('585', 'JOAO PAMINHIO', 'BRASIL');                      
INSERT INTO comercios VALUES ('23432432',  'JOAQUIN DIAZ', 'ESPAÑA'); 