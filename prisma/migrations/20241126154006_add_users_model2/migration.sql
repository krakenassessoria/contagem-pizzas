/*
  Warnings:

  - You are about to drop the `Sector` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `sector` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "SectorType" AS ENUM ('SALGADA', 'DOCE');

-- DropForeignKey
ALTER TABLE "Sector" DROP CONSTRAINT "Sector_companyId_fkey";

-- AlterTable
ALTER TABLE "User" ADD COLUMN     "sector" "SectorType" NOT NULL;

-- DropTable
DROP TABLE "Sector";
