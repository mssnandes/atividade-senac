-- CreateTable
CREATE TABLE `clientes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `email` VARCHAR(191) NOT NULL,
    `password` VARCHAR(191) NOT NULL,
    `endereco` VARCHAR(191) NOT NULL,
    `telefone` VARCHAR(191) NOT NULL,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `clientes_email_key`(`email`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `agendamentos` (
    `idScheduling` INTEGER NOT NULL AUTO_INCREMENT,
    `dateScheduling` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `idClient` INTEGER NOT NULL,

    UNIQUE INDEX `agendamentos_idClient_key`(`idClient`),
    PRIMARY KEY (`idScheduling`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `agendamentos` ADD CONSTRAINT `agendamentos_idClient_fkey` FOREIGN KEY (`idClient`) REFERENCES `clientes`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
