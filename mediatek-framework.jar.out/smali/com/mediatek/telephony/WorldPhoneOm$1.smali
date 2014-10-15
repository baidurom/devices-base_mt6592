.class Lcom/mediatek/telephony/WorldPhoneOm$1;
.super Landroid/content/BroadcastReceiver;
.source "WorldPhoneOm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/WorldPhoneOm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/WorldPhoneOm;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/WorldPhoneOm;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 488
    const-string v4, "[BroadcastReceiver]+"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 490
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

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 492
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 493
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, simStatus:Ljava/lang/String;
    const-string v4, "simId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 495
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

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 496
    const-string v4, "IMSI"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 498
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$100()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v4

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance(I)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aput-object v5, v4, v3

    .line 499
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$200()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$100()[Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(I)Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aput-object v5, v4, v3

    .line 500
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$200()[Lcom/android/internal/telephony/IccRecords;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 501
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

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 502
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$400()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    .line 503
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$400()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 504
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$500()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    add-int/lit16 v6, v3, 0x3e8

    invoke-virtual {v5, v6}, Lcom/mediatek/telephony/WorldPhoneOm;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getCurrentPOLList(Landroid/os/Message;)V

    .line 506
    :cond_0
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 507
    const-string v4, "3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 508
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$800(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$702(I)I

    .line 509
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$900()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1

    .line 510
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$900()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 511
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$700()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 512
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1002(Z)Z

    .line 513
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1100()I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 514
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    const/4 v5, 0x4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1200(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    .line 523
    :cond_1
    :goto_0
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1300()[Z

    move-result-object v4

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_2

    .line 524
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1300()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 525
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

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1400()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1500()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 527
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->resumeCampingProcedure(I)V
    invoke-static {v4, v3}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1600(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    .line 587
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_2
    :goto_1
    const-string v4, "[BroadcastReceiver]-"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 588
    return-void

    .line 516
    .restart local v2       #simStatus:Ljava/lang/String;
    .restart local v3       #slotId:I
    :cond_3
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$700()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 517
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1002(Z)Z

    goto :goto_0

    .line 518
    :cond_4
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$700()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 519
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1002(Z)Z

    .line 520
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleSwitchModem(I)V
    invoke-static {v4, v9}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1200(Lcom/mediatek/telephony/WorldPhoneOm;I)V

    goto :goto_0

    .line 531
    :cond_5
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->getUserType(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/mediatek/telephony/WorldPhoneOm;->access$800(Lcom/mediatek/telephony/WorldPhoneOm;Ljava/lang/String;)I

    .line 532
    const-string v4, "Not 3G slot"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto :goto_1

    .line 534
    :cond_6
    const-string v4, "ABSENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 535
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$300()[Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    aput-object v5, v4, v3

    .line 536
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$900()[Z

    move-result-object v4

    aput-boolean v8, v4, v3

    .line 537
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1300()[Z

    move-result-object v4

    aput-boolean v7, v4, v3

    .line 538
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$400()[Z

    move-result-object v4

    aput-boolean v8, v4, v3

    .line 539
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 540
    const-string v4, "3G Sim removed, no world phone service"

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 541
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$702(I)I

    .line 542
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1702(I)I

    .line 543
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1002(Z)Z

    .line 544
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1802(Z)Z

    .line 545
    const/16 v4, -0x63

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$602(I)I

    goto :goto_1

    .line 547
    :cond_7
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

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 550
    .end local v2           #simStatus:Ljava/lang/String;
    .end local v3           #slotId:I
    :cond_8
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EVENT_3G_SWITCH_DONE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 551
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    const/16 v5, -0x62

    if-eq v4, v5, :cond_9

    .line 552
    sget-object v4, Lcom/android/internal/telephony/gemini/GeminiPhone;->EXTRA_3G_SIM:Ljava/lang/String;

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$602(I)I

    .line 554
    :cond_9
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handle3gSwitched()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1900(Lcom/mediatek/telephony/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 555
    :cond_a
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 556
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 557
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-eqz v1, :cond_2

    .line 558
    const-string v4, "simId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 559
    .restart local v3       #slotId:I
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2002(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilRadioTechnology()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2102(I)I

    .line 561
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRegState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2202(I)I

    .line 562
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2302(I)I

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "m3gSimSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 564
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

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPlmnSs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2000()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 567
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2300()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRegState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2200()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/telephony/WorldPhoneUtil;->regStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRilRadioTechnology: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2100()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 571
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2300()I

    move-result v4

    if-nez v4, :cond_e

    .line 572
    invoke-static {v7}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1802(Z)Z

    .line 576
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sAllowSwitchModem: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1800()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$000(Ljava/lang/String;)V

    .line 578
    :cond_b
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2200()I

    move-result v4

    if-nez v4, :cond_c

    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2300()I

    move-result v4

    if-eq v4, v8, :cond_d

    :cond_c
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2200()I

    move-result v4

    if-ne v4, v9, :cond_2

    .line 581
    :cond_d
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOm;->access$600()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 582
    iget-object v4, p0, Lcom/mediatek/telephony/WorldPhoneOm$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOm;

    #calls: Lcom/mediatek/telephony/WorldPhoneOm;->handleNoService()V
    invoke-static {v4}, Lcom/mediatek/telephony/WorldPhoneOm;->access$2400(Lcom/mediatek/telephony/WorldPhoneOm;)V

    goto/16 :goto_1

    .line 574
    :cond_e
    invoke-static {v8}, Lcom/mediatek/telephony/WorldPhoneOm;->access$1802(Z)Z

    goto :goto_2
.end method
