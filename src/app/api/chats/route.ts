import { Chat } from "./../../../../node_modules/.prisma/client/index.d";
import { prisma } from "@/prisma/prisma";
import { PrismaClient } from "@prisma/client";
import { NextRequest, NextResponse } from "next/server";

export async function POST(request: NextRequest) {
  const body = await request.json();
  const chatCreated = await prisma.chat.create({
    data: {
      mensagem: body.mensagem,
    },
  });

  return NextResponse.json(chatCreated);
}
