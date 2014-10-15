.class Landroid/view/BaiduVolumePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "BaiduVolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/BaiduVolumePanel;->listenToRingerMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/BaiduVolumePanel;


# direct methods
.method constructor <init>(Landroid/view/BaiduVolumePanel;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/view/BaiduVolumePanel$1;->this$0:Landroid/view/BaiduVolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x3e8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/BaiduVolumePanel$1;->this$0:Landroid/view/BaiduVolumePanel;

    invoke-static {}, Landroid/view/VolumePanel;->getMsgRingerModeChanged()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/BaiduVolumePanel;->removeMessages(I)V

    iget-object v1, p0, Landroid/view/BaiduVolumePanel$1;->this$0:Landroid/view/BaiduVolumePanel;

    iget-object v2, p0, Landroid/view/BaiduVolumePanel$1;->this$0:Landroid/view/BaiduVolumePanel;

    invoke-static {}, Landroid/view/VolumePanel;->getMsgRingerModeChanged()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/BaiduVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/BaiduVolumePanel;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.THEME_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/BaiduVolumePanel$1;->this$0:Landroid/view/BaiduVolumePanel;

    invoke-virtual {v1, v3}, Landroid/view/BaiduVolumePanel;->removeMessages(I)V

    iget-object v1, p0, Landroid/view/BaiduVolumePanel$1;->this$0:Landroid/view/BaiduVolumePanel;

    iget-object v2, p0, Landroid/view/BaiduVolumePanel$1;->this$0:Landroid/view/BaiduVolumePanel;

    invoke-virtual {v2, v3}, Landroid/view/BaiduVolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/BaiduVolumePanel;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
