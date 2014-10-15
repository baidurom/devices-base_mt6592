.class Lcom/mediatek/telephony/WorldPhoneOp01$2;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOp01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/WorldPhoneOp01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/WorldPhoneOp01;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/WorldPhoneOp01;)V
    .locals 0
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOp01$2;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 437
    const-string v4, "[BroadcastReceiver]+"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, action:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 441
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 442
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, simStatus:Ljava/lang/String;
    const-string v4, "simId"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 444
    .local v3, slotId:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 445
    const-string v4, "IMSI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 447
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$300()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aput-object v5, v4, v3

    .line 448
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$400()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$300()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aput-object v5, v4, v3

    .line 449
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$500()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$400()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mImsi["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$500()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 452
    const-string v4, "3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 453
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$2;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$500()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$800(Lcom/mediatek/telephony/WorldPhoneOp01;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$702(I)I

    .line 454
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$900()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 455
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$900()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 456
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$700()I

    move-result v4

    if-eq v4, v7, :cond_0

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$700()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 457
    :cond_0
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1002(Z)Z

    .line 464
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1100()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_2

    .line 465
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1100()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI fot slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " now ready, resuming PLMN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1200()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1300()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 468
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$2;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->resumeCampingProcedure(I)V
    invoke-static {v4, v3}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1400(Lcom/mediatek/telephony/WorldPhoneOp01;I)V

    .line 517
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_2
    :goto_1
    const-string v4, "[BroadcastReceiver]-"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 518
    return-void

    .line 458
    .restart local v2       #simStatus:Ljava/lang/String;
    .restart local v3       #slotId:I
    :cond_3
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$700()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 459
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1002(Z)Z

    .line 460
    const-string v4, "Type3 user, switch to FDD modem"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 461
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$2;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v4, v8}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Lcom/mediatek/telephony/WorldPhoneOp01;I)V

    goto :goto_0

    .line 472
    :cond_4
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$2;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$500()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$800(Lcom/mediatek/telephony/WorldPhoneOp01;Ljava/lang/String;)I

    .line 473
    const-string v4, "Not 3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 475
    :cond_5
    const-string v4, "ABSENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 476
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$500()[Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    aput-object v5, v4, v3

    .line 477
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$900()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 478
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1100()[Z

    move-result-object v4

    aput-boolean v6, v4, v3

    .line 479
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 480
    const-string v4, "3G Sim removed, no world phone service"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 481
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$702(I)I

    .line 482
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1502(I)I

    .line 483
    invoke-static {v6}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1002(Z)Z

    .line 484
    const/16 v4, -0x63

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$602(I)I

    goto :goto_1

    .line 486
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not 3G slot"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 489
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_7
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 490
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    const/16 v5, -0x62

    if-eq v4, v5, :cond_8

    .line 491
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$602(I)I

    .line 493
    :cond_8
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$2;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->handle3gSwitched()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1600(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    goto/16 :goto_1

    .line 494
    :cond_9
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 496
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-eqz v1, :cond_2

    .line 497
    const-string v4, "simId"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 498
    .restart local v3       #slotId:I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1702(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilRadioTechnology()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1802(I)I

    .line 500
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1902(I)I

    .line 501
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2002(I)I

    .line 502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m3gSimSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 503
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isEmergencyOnly: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 505
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPlmnSs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2000()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRegState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1900()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRilRadioTechnology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1800()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$1900()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2000()I

    move-result v4

    if-ne v4, v7, :cond_2

    .line 511
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 512
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOp01$2;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->handleNoService()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$2100(Lcom/mediatek/telephony/WorldPhoneOp01;)V

    goto/16 :goto_1
.end method
