.class Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt$1;
.super Landroid/content/BroadcastReceiver;
.source "ConcatenatedSmsFwkExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;


# direct methods
.method constructor <init>(Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt$1;->this$0:Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.sms.ACTION_CLEAR_OUT_SEGMENTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 200
    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 201
    .local v1, id:I
    iget-object v2, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt$1;->this$0:Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;

    iget v2, v2, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->mSimId:I

    if-ne v1, v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt$1;->this$0:Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;

    #calls: Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->checkOutOfDateSegments()V
    invoke-static {v2}, Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;->access$000(Lcom/mediatek/op/sms/ConcatenatedSmsFwkExt;)V

    .line 206
    .end local v1           #id:I
    :cond_0
    return-void
.end method
