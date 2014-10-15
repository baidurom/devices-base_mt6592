.class Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;
.super Landroid/os/Handler;
.source "InternationalRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/InternationalRoamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimSwithHandler"
.end annotation


# static fields
.field private static final CURRENT_SIM_MODE:Ljava/lang/String; = "ct.internationalcard.sim.mode"

.field private static final EVENT_PHONE_RADIO_OFF:I = 0x66

.field private static final EVENT_SIM_SWITCH_DONE:I = 0x65

.field private static final EVENT_SWITCH_PHONE:I = 0x69

.field private static final EVENT_SWITCH_RIL_SOCKET_INTERFACE:I = 0x67

.field private static final EVENT_SWITCH_SIM_INTERFACE:I = 0x68


# instance fields
.field private mChangeToGemini:Z

.field final synthetic this$0:Lcom/mediatek/telephony/InternationalRoamingController;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/InternationalRoamingController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 882
    iput-object p1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    .line 883
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 884
    return-void
.end method

.method private setCurrentSimMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 887
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SSH] setCurrentSimMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string v0, "GSM"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 889
    const-string v0, "mediatek.evdo.mode.dualtalk"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ct.internationalcard.sim.mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 892
    return-void

    .line 887
    :cond_0
    const-string v0, "CDMA"

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x69

    const/16 v7, 0x68

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 909
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1002
    :pswitch_0
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSH] Should never run into this case: message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1005
    :goto_0
    return-void

    .line 911
    :pswitch_1
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 912
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] CDMA -> GSM, Set CDMA radio off."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 913
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerCardSwitch(ILandroid/os/Message;)V

    .line 915
    iput-boolean v4, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    .line 916
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$200(Lcom/mediatek/telephony/InternationalRoamingController;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->setCurrentSimMode(Landroid/content/Context;I)V

    goto :goto_0

    .line 919
    :cond_0
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] GSM -> CDMA, EVENT_SIM_START_SWITCH"

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$200(Lcom/mediatek/telephony/InternationalRoamingController;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->setCurrentSimMode(Landroid/content/Context;I)V

    .line 922
    iput-boolean v6, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    .line 923
    invoke-virtual {p0, v7, v5}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 928
    :pswitch_2
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSH] EVENT_SWITCH_RIL_SOCKET_INTERFACE: mChangeToGemini = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 930
    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    if-eqz v1, :cond_1

    .line 931
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v7, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 933
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$300(Lcom/mediatek/telephony/InternationalRoamingController;)I

    move-result v2

    invoke-interface {v1, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->switchRilSocket(II)V

    goto/16 :goto_0

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 937
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I
    invoke-static {v3}, Lcom/mediatek/telephony/InternationalRoamingController;->access$300(Lcom/mediatek/telephony/InternationalRoamingController;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->switchRilSocket(II)V

    goto/16 :goto_0

    .line 942
    :pswitch_3
    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    if-eqz v1, :cond_3

    .line 944
    invoke-virtual {p0, v7}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->removeMessages(I)V

    .line 945
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getSimState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 946
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] Dual phone SIM is not available when handing EVENT_SWITCH_SIM_INTERFACE."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 950
    :cond_2
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] EVENT_SWITCH_SIM_INTERFACE: CDMA -> GSM."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 951
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 952
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSimInterfaceSwitch(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 956
    :cond_3
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] EVENT_SWITCH_SIM_INTERFACE: GSM -> CDMA."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0x67

    invoke-virtual {p0, v2}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSimInterfaceSwitch(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 966
    :pswitch_4
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$400(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneProxy;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 968
    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    if-eqz v1, :cond_4

    const/16 v0, 0x10

    .line 970
    .local v0, newTech:I
    :goto_1
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualModePhone:Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$400(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/PhoneProxy;->updatePhoneObjectForSwitchPhone(I)V

    .line 972
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SSH] EVENT_SWITCH_PHONE: newTech = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 975
    const-string v1, "mux.report.case"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #setter for: Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromSimSwitch:Z
    invoke-static {v1, v4}, Lcom/mediatek/telephony/InternationalRoamingController;->access$502(Lcom/mediatek/telephony/InternationalRoamingController;Z)Z

    .line 980
    iget-boolean v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->mChangeToGemini:Z

    if-eqz v1, :cond_5

    .line 981
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->finishToSwitchPhone()V
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$600(Lcom/mediatek/telephony/InternationalRoamingController;)V

    .line 983
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] Power on GSM modem after phone instance updated."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 984
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$700(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 968
    .end local v0           #newTech:I
    :cond_4
    const/4 v0, 0x6

    goto :goto_1

    .line 986
    .restart local v0       #newTech:I
    :cond_5
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getSimState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 987
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] Dual phone SIM is not available when handing EVENT_POWERON_PHONES."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 990
    :cond_6
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->finishToSwitchPhone()V
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$600(Lcom/mediatek/telephony/InternationalRoamingController;)V

    .line 992
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    const-string v2, "[SSH] Power on GSM modem and CDMA modem after phone instance updated."

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0, v8}, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->removeMessages(I)V

    .line 995
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRadioStateChanged(Landroid/os/Handler;)V

    .line 996
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$100(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerCardSwitch(ILandroid/os/Message;)V

    .line 997
    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$SimSwithHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mGsmActivePhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$700(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPowerOn(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 909
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
