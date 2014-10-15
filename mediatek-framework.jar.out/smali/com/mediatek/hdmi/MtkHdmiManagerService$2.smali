.class Lcom/mediatek/hdmi/MtkHdmiManagerService$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/mediatek/hdmi/MtkHdmiManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 298
    const-string v1, "MtkHdmiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hdmiSettingsObserver onChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    #getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1200(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hdmi_enable_status"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    #setter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z
    invoke-static {v1, v0}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$702(Lcom/mediatek/hdmi/MtkHdmiManagerService;Z)Z

    .line 302
    iget-object v0, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    iget-object v1, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    #getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mCablePlugged:Z
    invoke-static {v1}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$800(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v1

    iget-object v2, p0, Lcom/mediatek/hdmi/MtkHdmiManagerService$2;->this$0:Lcom/mediatek/hdmi/MtkHdmiManagerService;

    #getter for: Lcom/mediatek/hdmi/MtkHdmiManagerService;->mHdmiEnabled:Z
    invoke-static {v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$700(Lcom/mediatek/hdmi/MtkHdmiManagerService;)Z

    move-result v2

    #calls: Lcom/mediatek/hdmi/MtkHdmiManagerService;->updateWakeLock(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/hdmi/MtkHdmiManagerService;->access$1300(Lcom/mediatek/hdmi/MtkHdmiManagerService;ZZ)V

    .line 303
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
