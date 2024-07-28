/*
  Warnings:

  - The primary key for the `CDN` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `CDN` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to drop the column `contactId` on the `Contact` table. All the data in the column will be lost.
  - The primary key for the `Logs` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Logs` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - A unique constraint covering the columns `[email]` on the table `Account` will be added. If there are existing duplicate values, this will fail.

*/
-- DropForeignKey
ALTER TABLE "Contact" DROP CONSTRAINT "Contact_contactId_fkey";

-- AlterTable
ALTER TABLE "CDN" DROP CONSTRAINT "CDN_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "CDN_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Contact" DROP COLUMN "contactId";

-- AlterTable
ALTER TABLE "Logs" DROP CONSTRAINT "Logs_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" SERIAL NOT NULL,
ADD CONSTRAINT "Logs_pkey" PRIMARY KEY ("id");

-- CreateIndex
CREATE UNIQUE INDEX "Account_email_key" ON "Account"("email");

-- AddForeignKey
ALTER TABLE "Contact" ADD CONSTRAINT "Contact_id_fkey" FOREIGN KEY ("id") REFERENCES "Account"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
