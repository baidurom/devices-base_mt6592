.class Lcom/mediatek/telephony/InternationalRoamingController$1;
.super Landroid/content/BroadcastReceiver;
.source "InternationalRoamingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/telephony/InternationalRoamingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/telephony/InternationalRoamingController;


# direct methods
.method constructor <init>(Lcom/mediatek/telephony/InternationalRoamingController;)V
    .locals 0
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/mediatek/telephony/InternationalRoamingController$1;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 1052
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1054
    const-string v3, "state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1055
    .local v1, enabled:Z
    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController$1;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Airplane mode changed to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/mediatek/telephony/InternationalRoamingController;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/mediatek/telephony/InternationalRoamingController;->access$000(Lcom/mediatek/telephony/InternationalRoamingController;Ljava/lang/String;)V

    .line 1056
    iget-object v3, p0, Lcom/mediatek/telephony/InternationalRoamingController$1;->this$0:Lcom/mediatek/telephony/InternationalRoamingController;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    #setter for: Lcom/mediatek/telephony/InternationalRoamingController;->mRadioOnFromAirplaneMode:Z
    invoke-static {v3, v2}, Lcom/mediatek/telephony/InternationalRoamingController;->access$1302(Lcom/mediatek/telephony/InternationalRoamingController;Z)Z

    .line 1058
    .end local v1           #enabled:Z
    :cond_1
    return-void
.end method
