.class Lcom/mediatek/hdmi/MtkHdmiManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkHdmiManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/hdmi/MtkHdmiManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;


# direct methods
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendMsg(I)V
    .locals 3
    .parameter "msgInit"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    #getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    #getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHandler:Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;
    invoke-static {v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1100(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/hdmi/MtkHdmiManagerService$HdmiHandler;->sendEmptyMessage(I)Z

    .line 288
    const-string v0, "MtkHdmiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 290
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, action:Ljava/lang/String;
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->log(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$000(Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.ACTION_BOOT_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    :cond_0
    invoke-direct {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->sendMsg(I)V

    .line 283
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    :cond_3
    invoke-direct {p0, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->sendMsg(I)V

    goto :goto_0

    .line 272
    :cond_4
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 273
    invoke-direct {p0, v5}, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->sendMsg(I)V

    .line 274
    invoke-direct {p0, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->sendMsg(I)V

    goto :goto_0

    .line 276
    :cond_5
    const-string v1, "android.intent.action.SMARTBOOK_PLUG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    const-string v2, "state"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    #setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z
    invoke-static {v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$902(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 278
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartbook plug:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    #getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mIsSmartBookPluggedIn:Z
    invoke-static {v3}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$900(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$1;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->handleNotification(Z)V
    invoke-static {v1, v4}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1000(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)V

    goto :goto_0
.end method
