/*
  Warnings:

  - You are about to drop the column `in` on the `Logs` table. All the data in the column will be lost.
  - You are about to drop the column `out` on the `Logs` table. All the data in the column will be lost.
  - You are about to drop the column `value` on the `Logs` table. All the data in the column will be lost.
  - Added the required column `total` to the `Logs` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Logs" DROP COLUMN "in",
DROP COLUMN "out",
DROP COLUMN "value",
ADD COLUMN     "total" INTEGER NOT NULL;
