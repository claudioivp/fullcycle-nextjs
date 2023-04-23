import { PrismaClient } from "@prisma/client";
import { NextRequest, NextResponse } from "next/server";

export async function POST(request: NextRequest) {
  const prisma = new PrismaClient();
  prisma.$connect();

  const body = await request.json();
  return NextResponse.json({ body });
}
