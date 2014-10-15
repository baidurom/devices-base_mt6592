.class Lcom/mediatek/telephony/WorldPhoneOp01$1;
.super Ljava/lang/Object;
.source "WorldPhoneOp01.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 283
    iput-object p1, p0, Lcom/mediatek/telephony/WorldPhoneOp01$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    invoke-static {}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$008()I

    .line 286
    const-string v0, "Time out!"

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->logd(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$100(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/mediatek/telephony/WorldPhoneOp01$1;->this$0:Lcom/mediatek/telephony/WorldPhoneOp01;

    const/4 v1, 0x3

    #calls: Lcom/mediatek/telephony/WorldPhoneOp01;->handleSwitchModem(I)V
    invoke-static {v0, v1}, Lcom/mediatek/telephony/WorldPhoneOp01;->access$200(Lcom/mediatek/telephony/WorldPhoneOp01;I)V

    .line 288
    return-void
.end method
