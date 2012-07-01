 

-- -----------------------------------------------------
-- Table `mydb`.`Cargos`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Cargos` (
  `idCargos` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`idCargos`) );


-- -----------------------------------------------------
-- Table `mydb`.`Participantes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Participantes` (
  `idParticipantes` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `apellido` VARCHAR(45) NULL ,
  `cargo` VARCHAR(45) NULL ,
  `Cargos_idCargos` INT NOT NULL ,
  PRIMARY KEY (`idParticipantes`) 
 );



-- -----------------------------------------------------
-- Table `mydb`.`Obras`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Obras` (
  `idObras` INT NOT NULL AUTO_INCREMENT ,
  `titulo` VARCHAR(45) NULL ,
  `resena` VARCHAR(150) NULL ,
  `autor` VARCHAR(45) NULL ,
  `fecha_desde` DATE NULL ,
  `fecha_hasta` DATE NULL ,
  `puntaje` INT NULL ,
  `detalles_extra` VARCHAR(120) NULL ,
  `numeroSitios` VARCHAR(45) NULL ,
  `precio` DECIMAL(10,2) NULL ,
  `duracion` INT NULL ,
  `director` INT NOT NULL ,
  `afiche` VARCHAR(45) NULL ,
  PRIMARY KEY (`idObras`) 
);



-- -----------------------------------------------------
-- Table `mydb`.`Categorias`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Categorias` (
  `idCategorias` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`idCategorias`) );



-- -----------------------------------------------------
-- Table `mydb`.`Categorias_obras`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Categorias_obras` (
  `Categorias_idCategorias` INT NOT NULL ,
  `Obras_idObras` INT NOT NULL ,
  PRIMARY KEY (`Categorias_idCategorias`, `Obras_idObras`) 
);



-- -----------------------------------------------------
-- Table `mydb`.`Roles`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Roles` (
  `idRoles` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`idRoles`) );



-- -----------------------------------------------------
-- Table `mydb`.`Usuarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Usuarios` (
  `idUsuarios` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `apellido1` VARCHAR(45) NULL ,
  `apellido2` VARCHAR(45) NULL ,
  `usuario` VARCHAR(45) NULL ,
  `clave` VARCHAR(45) NULL ,
  `estado` INT NULL ,
  `correo` VARCHAR(45) NULL ,
  `Roles_idRoles` INT NOT NULL ,
  PRIMARY KEY (`idUsuarios`) 
);


-- -----------------------------------------------------
-- Table `mydb`.`Votaciones`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Votaciones` (
  `Usuarios_idUsuarios` INT NOT NULL ,
  `Obras_idObras` INT NOT NULL ,
  `fecha` DATE NULL ,
  `comentario` VARCHAR(120) NULL ,
  PRIMARY KEY (`Usuarios_idUsuarios`, `Obras_idObras`) 
);



-- -----------------------------------------------------
-- Table `mydb`.`Obras_has_Participantes`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Obras_has_Participantes` (
  `Obras_idObras` INT NOT NULL ,
  `Participantes_idParticipantes` INT NOT NULL ,
  `personaje` VARCHAR(45) NULL ,
  PRIMARY KEY (`Obras_idObras`, `Participantes_idParticipantes`) 
);



-- -----------------------------------------------------
-- Table `mydb`.`Horarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Horarios` (
  `idHorarios` INT NOT NULL ,
  `horaInicio` TIME NULL ,
  `horaFin` TIME NULL ,
  PRIMARY KEY (`idHorarios`) );



-- -----------------------------------------------------
-- Table `mydb`.`Salas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Salas` (
  `idSalas` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`idSalas`) );



-- -----------------------------------------------------
-- Table `mydb`.`Obras_has_Horarios`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Obras_has_Horarios` (
  `Obras_idObras` INT NOT NULL ,
  `Horarios_idHorarios` INT NOT NULL ,
  `dia` DATE NOT NULL ,
  `Salas_idSalas` INT NOT NULL ,
  PRIMARY KEY (`Obras_idObras`, `Horarios_idHorarios`, `dia`, `Salas_idSalas`) 
);



-- -----------------------------------------------------
-- Table `mydb`.`Temporadas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Temporadas` (
  `idTemporadas` INT NOT NULL AUTO_INCREMENT ,
  `nombre` VARCHAR(45) NULL ,
  `descripcion` VARCHAR(45) NULL ,
  PRIMARY KEY (`idTemporadas`) );



-- -----------------------------------------------------
-- Table `mydb`.`Temporadas_has_Obras`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Temporadas_has_Obras` (
  `Temporadas_idTemporadas` INT NOT NULL ,
  `Obras_idObras` INT NOT NULL ,
  PRIMARY KEY (`Temporadas_idTemporadas`, `Obras_idObras`) 
);





