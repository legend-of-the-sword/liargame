-- AlterTable
ALTER TABLE "Player" ADD COLUMN     "isAgent" BOOLEAN NOT NULL DEFAULT false,
ADD COLUMN     "wallet" TEXT;
