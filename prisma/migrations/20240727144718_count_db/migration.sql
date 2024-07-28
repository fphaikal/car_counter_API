/*
  Warnings:

  - You are about to drop the column `email` on the `Contact` table. All the data in the column will be lost.
  - Added the required column `email` to the `Account` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Account" ADD COLUMN     "email" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "Contact" DROP COLUMN "email";
