-- =====================================================
-- Script de Criação de Tabelas - Order System
-- =====================================================

-- -----------------------------------------------------
-- Table `users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `users` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Tabela de usuários do sistema';

-- -----------------------------------------------------
-- Table `products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `products` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `stock` INT NOT NULL DEFAULT 0,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
COMMENT = 'Tabela de produtos disponíveis';

-- -----------------------------------------------------
-- Table `orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `orders` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `total` DECIMAL(10,2) NOT NULL,
  `status` VARCHAR(50) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_orders_user_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Tabela de pedidos realizados';

-- -----------------------------------------------------
-- Table `order_items`
-- -----------------------------------------------------
-- EXEMPLO DE CHAVE PRIMARIA SIMPLES (@Id no JPA)
CREATE TABLE IF NOT EXISTS `order_items` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `quantity` INT NOT NULL,
  `subtotal` DECIMAL(10,2) NOT NULL,
  `product_id` BIGINT NOT NULL,
  `order_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_items_product_idx` (`product_id` ASC) VISIBLE,
  INDEX `fk_items_order_idx` (`order_id` ASC) VISIBLE,
  CONSTRAINT `fk_items_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `products` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_items_order`
    FOREIGN KEY (`order_id`)
    REFERENCES `orders` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Tabela de itens de pedido - exemplo de chave primária simples';

-- -----------------------------------------------------
-- Table `product_reviews`
-- -----------------------------------------------------
-- EXEMPLO DE CHAVE PRIMARIA COMPOSTA (@EmbeddedId no JPA)
--
-- DIFERENCA CHAVE SIMPLES vs COMPOSTA:
--
-- order_items (CHAVE SIMPLES - @Id):
--   PRIMARY KEY (id)  -- Auto-incremento, artificial
--
-- product_reviews (CHAVE COMPOSTA - @EmbeddedId):
--   PRIMARY KEY (user_id, product_id)  -- Natural do negocio
--
-- VANTAGENS DA CHAVE COMPOSTA:
-- - Impoe unicidade: Um usuario avalia cada produto apenas uma vez
-- - Chave natural: (usuario, produto) identifica a avaliacao
-- - Sem necessidade de ID artificial
--
-- DESVANTAGENS:
-- - Mais complexa no JPA (requer classe @Embeddable)
-- - Mais dificil referenciar em outras tabelas (FK composta)
-- - Nao permite auto-incremento
--
CREATE TABLE IF NOT EXISTS `product_reviews` (
  `user_id` BIGINT NOT NULL,
  `product_id` BIGINT NOT NULL,
  `rating` INT NOT NULL,
  `comment` VARCHAR(500) NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`, `product_id`),
  INDEX `fk_reviews_products_idx` (`product_id` ASC) VISIBLE,
  CONSTRAINT `fk_reviews_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `users` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_reviews_product`
    FOREIGN KEY (`product_id`)
    REFERENCES `products` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
COMMENT = 'Exemplo de tabela com chave primaria composta (user_id, product_id)';
