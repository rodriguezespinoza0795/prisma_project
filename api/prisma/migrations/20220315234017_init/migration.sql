-- CreateTable
CREATE TABLE `Avocado` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NULL,
    `deletedAt` DATETIME(3) NULL,
    `name` VARCHAR(191) NOT NULL,
    `sku` VARCHAR(191) NOT NULL,
    `price` DOUBLE NOT NULL,
    `image` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Avocado_sku_key`(`sku`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Attributes` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `description` VARCHAR(191) NULL,
    `shape` VARCHAR(191) NULL,
    `hardiness` VARCHAR(191) NULL,
    `taste` VARCHAR(191) NULL,
    `avocadoId` INTEGER NOT NULL,

    UNIQUE INDEX `Attributes_avocadoId_key`(`avocadoId`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Attributes` ADD CONSTRAINT `Attributes_avocadoId_fkey` FOREIGN KEY (`avocadoId`) REFERENCES `Avocado`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
