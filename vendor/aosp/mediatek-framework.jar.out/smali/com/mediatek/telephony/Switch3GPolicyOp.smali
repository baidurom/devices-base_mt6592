.class public Lcom/mediatek/telephony/Switch3GPolicyOp;
.super Lcom/mediatek/telephony/Switch3GPolicyDefault;
.source "Switch3GPolicyOp.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Switch3GPolicyOp"


# instance fields
.field private telephonyMode:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/mediatek/telephony/Switch3GPolicyDefault;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->isDualTalkMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    .line 63
    :cond_0
    const-string v0, "Switch3GPolicyOp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "policy object created. (telephonyMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method


# virtual methods
.method public getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 301
    const/4 v0, 0x0

    .line 303
    .local v0, nRet:I
    const-string v3, "Switch3GPolicyOp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllowedSwitch3GSlots (telephonyMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId3="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId4="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget v3, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    if-nez p4, :cond_d

    if-nez p5, :cond_d

    .line 307
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, sim1Op:Ljava/lang/String;
    invoke-static {p1, p3}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    .local v2, sim2Op:Ljava/lang/String;
    const-string v3, "Switch3GPolicyOp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllowedSwitch3GSlots (sim1Op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sim2Op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    .line 314
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "getAllowedSwitch3GSlots check OP01,OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v0, 0x1

    .line 375
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 318
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "getAllowedSwitch3GSlots check OP02,OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x2

    goto :goto_0

    .line 322
    :cond_2
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 323
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "getAllowedSwitch3GSlots check OP01,OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x3

    goto :goto_0

    .line 326
    :cond_3
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 327
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "getAllowedSwitch3GSlots check OP02,OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v0, 0x0

    goto :goto_0

    .line 332
    :cond_4
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 335
    :cond_5
    if-nez p2, :cond_6

    if-eqz p3, :cond_c

    .line 336
    :cond_6
    if-eqz p2, :cond_9

    .line 337
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 338
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "getAllowedSwitch3GSlots check OP01,(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v0, 0x1

    goto :goto_0

    .line 341
    :cond_7
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 342
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "getAllowedSwitch3GSlots check OP02,(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v0, 0x0

    goto :goto_0

    .line 347
    :cond_8
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 350
    :cond_9
    if-eqz p3, :cond_0

    .line 351
    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 352
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "getAllowedSwitch3GSlots check (null),OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 355
    :cond_a
    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 356
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "getAllowedSwitch3GSlots check (null),OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 361
    :cond_b
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 368
    :cond_c
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 372
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_d
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->getAllowedSwitch3GSlots(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0
.end method

.method public isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 240
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->isManualModeChange3GAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 242
    .local v0, bRet:Z
    const-string v3, "Switch3GPolicyOp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isManualModeChange3GAllowed (telephonyMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId3="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId4="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget v3, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 246
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, sim1Op:Ljava/lang/String;
    invoke-static {p1, p3}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, sim2Op:Ljava/lang/String;
    const-string v3, "Switch3GPolicyOp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isManualModeChange3GAllowed (sim1Op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sim2Op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 253
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeChange3GAllowed check OP01,OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v0, 0x0

    .line 297
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 256
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeChange3GAllowed check OP02,OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    goto :goto_0

    .line 259
    :cond_2
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 260
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeChange3GAllowed check OP01,OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 262
    :cond_3
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeChange3GAllowed check OP02,OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_0

    .line 270
    :cond_5
    if-eqz p2, :cond_7

    .line 271
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 272
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeChange3GAllowed check OP01,(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    goto :goto_0

    .line 274
    :cond_6
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeChange3GAllowed check OP02,(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x0

    goto :goto_0

    .line 281
    :cond_7
    if-eqz p3, :cond_0

    .line 282
    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 283
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeChange3GAllowed check (null),OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 285
    :cond_8
    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeChange3GAllowed check (null),OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "ctx"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    .line 179
    invoke-super/range {p0 .. p5}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->isManualModeEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 181
    .local v0, bRet:Z
    const-string v3, "Switch3GPolicyOp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isManualModeEnabled (telephonyMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId3="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId4="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget v3, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-nez p4, :cond_0

    if-nez p5, :cond_0

    .line 185
    invoke-static {p1, p2}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, sim1Op:Ljava/lang/String;
    invoke-static {p1, p3}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, sim2Op:Ljava/lang/String;
    const-string v3, "Switch3GPolicyOp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isManualModeEnabled (sim1Op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sim2Op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 192
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeEnabled check OP01,OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v0, 0x1

    .line 236
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 195
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_1
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 196
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeEnabled check OP02,OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_2
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 199
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeEnabled check OP01,OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x1

    goto :goto_0

    .line 201
    :cond_3
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 202
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeEnabled check OP02,OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_4
    if-nez p2, :cond_5

    if-eqz p3, :cond_0

    .line 209
    :cond_5
    if-eqz p2, :cond_7

    .line 210
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 211
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeEnabled check OP01,(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    :cond_6
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeEnabled check OP02,(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v0, 0x0

    goto :goto_0

    .line 220
    :cond_7
    if-eqz p3, :cond_0

    .line 221
    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 222
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeEnabled check (null),OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 224
    :cond_8
    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 225
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "isManualModeEnabled check (null),OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "ctx"
    .parameter "iccId3GSim"
    .parameter "id3GSim"
    .parameter "iccId1"
    .parameter "iccId2"
    .parameter "iccId3"
    .parameter "iccId4"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 69
    const/4 v0, -0x1

    .line 71
    .local v0, selected:I
    const-string v3, "Switch3GPolicyOp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select3GCapability (telephonyMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId3GSim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id3GSim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId3="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iccId4="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget v3, p0, Lcom/mediatek/telephony/Switch3GPolicyOp;->telephonyMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    if-nez p6, :cond_0

    if-nez p7, :cond_0

    .line 76
    invoke-static {p1, p4}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, sim1Op:Ljava/lang/String;
    invoke-static {p1, p5}, Landroid/provider/Telephony$SIMInfo;->getOperatorByIccId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, sim2Op:Ljava/lang/String;
    const-string v3, "Switch3GPolicyOp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select3GCapability (sim1Op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sim2Op="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz p4, :cond_8

    if-eqz p5, :cond_8

    .line 83
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "select3GCapability check OP01,OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-ne p3, v6, :cond_2

    .line 88
    const/16 v0, 0x15

    .line 168
    .end local v1           #sim1Op:Ljava/lang/String;
    .end local v2           #sim2Op:Ljava/lang/String;
    :cond_0
    :goto_0
    if-ne v0, v6, :cond_1

    .line 170
    invoke-super/range {p0 .. p7}, Lcom/mediatek/telephony/Switch3GPolicyDefault;->select3GCapability(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 173
    :cond_1
    return v0

    .line 89
    .restart local v1       #sim1Op:Ljava/lang/String;
    .restart local v2       #sim2Op:Ljava/lang/String;
    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 90
    const/16 v0, 0x15

    goto :goto_0

    .line 92
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    :cond_4
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 97
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "select3GCapability check OP02,OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-ne p3, v6, :cond_5

    .line 100
    const/16 v0, 0x15

    goto :goto_0

    .line 101
    :cond_5
    if-ne p3, v7, :cond_6

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 102
    const/16 v0, 0x15

    goto :goto_0

    .line 104
    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    .line 107
    :cond_7
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "select3GCapability check OP02,OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v0, 0x15

    goto :goto_0

    .line 116
    :cond_8
    if-nez p4, :cond_9

    if-eqz p5, :cond_0

    .line 118
    :cond_9
    if-eqz p4, :cond_d

    .line 119
    const-string v3, "OP01"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 121
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "select3GCapability check OP01,(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-ne p3, v6, :cond_a

    .line 124
    const/16 v0, 0x15

    goto :goto_0

    .line 125
    :cond_a
    if-nez p3, :cond_b

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 126
    const/16 v0, 0x15

    goto :goto_0

    .line 128
    :cond_b
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :cond_c
    const-string v3, "OP02"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "select3GCapability check OP02,(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 140
    :cond_d
    if-eqz p5, :cond_0

    .line 142
    const-string v3, "OP01"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 143
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "select3GCapability check (null),OP01"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-ne p3, v6, :cond_e

    .line 146
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 147
    :cond_e
    if-ne p3, v7, :cond_f

    invoke-virtual {p5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 148
    const/16 v0, 0x15

    goto/16 :goto_0

    .line 150
    :cond_f
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 153
    :cond_10
    const-string v3, "OP02"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    const-string v3, "Switch3GPolicyOp"

    const-string v4, "select3GCapability check (null),OP02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/16 v0, 0x15

    goto/16 :goto_0
.end method
