.class Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;
.super Landroid/os/Handler;
.source "InternationalRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/InternationalRoamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CardTypeHandler"
.end annotation


# static fields
.field private static final EVENT_DUAL_IMSI_READY:I = 0xc9


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/InternationalRoamingController;


# direct methods
.method public constructor <init>(Lcom/mediatek/telephony/InternationalRoamingController;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1014
    iput-object p1, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    .line 1015
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1016
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CTH] handleMessage: msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1021
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1043
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CTH] Should never run into this case: msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1023
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$900(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    #setter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-static {v0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$802(Lcom/mediatek/telephony/InternationalRoamingController;Lcom/android/internal/telephony/UiccCard;)Lcom/android/internal/telephony/UiccCard;

    .line 1024
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CTH] EVENT_ICC_CHANGED: mUiccCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$800(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-static {v0}, Lcom/mediatek/telephony/InternationalRoamingController;->access$800(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1027
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->removeMessages(I)V

    .line 1028
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;
    invoke-static {v0}, Lcom/mediatek/telephony/InternationalRoamingController;->access$900(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 1029
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-static {v0}, Lcom/mediatek/telephony/InternationalRoamingController;->access$800(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    const/16 v1, 0xc9

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/UiccCard;->registerForDualImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1034
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-static {v0}, Lcom/mediatek/telephony/InternationalRoamingController;->access$800(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/UiccCard;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/UiccCard;->unregisterForDualImsiReady(Landroid/os/Handler;)V

    .line 1035
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$800(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCdmaImsi()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$1002(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$800(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getGsmImsi()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$1102(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)Ljava/lang/String;

    .line 1037
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CTH] EVENT_DUAL_IMSI_READY: mCdmaImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$1000(Lcom/mediatek/telephony/InternationalRoamingController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mGsmImsi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$1100(Lcom/mediatek/telephony/InternationalRoamingController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUiccCard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mUiccCard:Lcom/android/internal/telephony/UiccCard;
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$800(Lcom/mediatek/telephony/InternationalRoamingController;)Lcom/android/internal/telephony/UiccCard;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1039
    iget-object v0, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    iget-object v1, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mDualSimId:I
    invoke-static {v1}, Lcom/mediatek/telephony/InternationalRoamingController;->access$300(Lcom/mediatek/telephony/InternationalRoamingController;)I

    move-result v1

    iget-object v2, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mCdmaImsi:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$1000(Lcom/mediatek/telephony/InternationalRoamingController;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController$CardTypeHandler;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    #getter for: Lcom/mediatek/telephony/InternationalRoamingController;->mGsmImsi:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/telephony/InternationalRoamingController;->access$1100(Lcom/mediatek/telephony/InternationalRoamingController;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->loadDualPhoneImsiCompleted(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/telephony/InternationalRoamingController;->access$1200(Lcom/mediatek/telephony/InternationalRoamingController;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1021
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
