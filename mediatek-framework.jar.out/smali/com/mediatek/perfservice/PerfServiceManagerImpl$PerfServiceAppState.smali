.class public Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;
.super Ljava/lang/Object;
.source "PerfServiceManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/perfservice/PerfServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PerfServiceAppState"
.end annotation


# instance fields
.field private mClassName:Ljava/lang/String;

.field private mPackName:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/mediatek/perfservice/PerfServiceManagerImpl;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "packName"
    .parameter "className"
    .parameter "state"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->this$0:Lcom/mediatek/perfservice/PerfServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mPackName:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mClassName:Ljava/lang/String;

    .line 82
    iput p4, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mState:I

    .line 83
    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mPackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/mediatek/perfservice/PerfServiceManagerImpl$PerfServiceAppState;->mState:I

    return v0
.end method
